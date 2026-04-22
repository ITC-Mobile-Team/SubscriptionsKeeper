//
//  DatabaseService.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.04.2026.
//

import SwiftData
import Foundation

// MARK: - SwiftData Model

@Model
final class UserSubscription {
    @Attribute(.unique)
    var id: UUID
    var identifierRawValue: String
    var groupRawValue: String
    var name: String
    var subscriptionDescription: String
    var cost: Double
    var currencyRawValue: String
    var paymentCycleRawValue: String
    var firstPaymentAt: Date

    init(
        id: UUID = UUID(),
        identifierRawValue: String,
        groupRawValue: String,
        name: String,
        subscriptionDescription: String,
        cost: Double,
        currencyRawValue: String,
        paymentCycleRawValue: String,
        createdAt: Date
    ) {
        self.id = id
        self.identifierRawValue = identifierRawValue
        self.groupRawValue = groupRawValue
        self.name = name
        self.subscriptionDescription = subscriptionDescription
        self.cost = cost
        self.currencyRawValue = currencyRawValue
        self.paymentCycleRawValue = paymentCycleRawValue
        self.firstPaymentAt = createdAt
    }
}

// MARK: - Mapping helpers

private extension UserSubscription {
    convenience init(from subscription: Subscription, id: UUID) {
        self.init(
            id: id,
            identifierRawValue: subscription.identifier.rawValue,
            groupRawValue: String(describing: subscription.group),
            name: subscription.name,
            subscriptionDescription: subscription.description,
            cost: subscription.cost,
            currencyRawValue: subscription.currency.rawValue,
            paymentCycleRawValue: subscription.paymentCycle.rawValue,
            createdAt: subscription.firstPaymentAt
        )
    }

    func toSubscription() -> Subscription? {
        guard
            let identifier = SubscriptionIdentifier(rawValue: identifierRawValue),
            let group = SubscriptionGroup.allCases.first(where: { String(describing: $0) == groupRawValue }),
            let currency = Currency(rawValue: currencyRawValue),
            let paymentCycle = PaymentCycle(rawValue: paymentCycleRawValue)
        else {
            return nil
        }
        return Subscription(
            identifier: identifier,
            group: group,
            name: name,
            description: subscriptionDescription,
            cost: cost,
            currency: currency,
            paymentCycle: paymentCycle,
            firstPaymentAt: firstPaymentAt
        )
    }
}

// MARK: - Protocol

protocol DatabaseService {
    /// Fetch all saved user subscriptions.
    func fetchAll() throws -> [UserSubscription]

    /// Save a new subscription. Returns the created model.
    @discardableResult
    func create(from subscription: Subscription, id: UUID) throws(DatabaseError) -> UserSubscription

    /// Update mutable fields of an existing record.
    func update(id: UUID, name: String) throws(DatabaseError)

    /// Delete a subscription by its identifier.
    func delete(id: UUID) throws(DatabaseError)
}

// MARK: - Implementation

final class DatabaseServiceImpl: DatabaseService {
    private let modelContainer: ModelContainer
    private let modelContext: ModelContext

    init() throws {
        let schema = Schema([UserSubscription.self])
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            modelContainer = try ModelContainer(for: schema, configurations: configuration)
        } catch {
            throw DatabaseError.initializationFailed(error)
        }
        modelContext = ModelContext(modelContainer)
    }

    func fetchAll() throws -> [UserSubscription] {
        let descriptor = FetchDescriptor<UserSubscription>(
            sortBy: [SortDescriptor(\.firstPaymentAt, order: .forward)]
        )
        do {
            return try modelContext.fetch(descriptor)
        } catch {
            throw DatabaseError.fetchFailed(error)
        }
    }

    @discardableResult
    func create(from subscription: Subscription, id: UUID) throws(DatabaseError) -> UserSubscription {
        let entry = UserSubscription(from: subscription, id: id)
        modelContext.insert(entry)
        do {
            try modelContext.save()
        } catch {
            throw DatabaseError.saveFailed(error)
        }
        return entry
    }

    func update(id: UUID, name: String) throws(DatabaseError) {
        let entry = try fetchEntry(by: id)
        entry.name = name
        do {
            try modelContext.save()
        } catch {
            throw DatabaseError.saveFailed(error)
        }
    }

    func delete(id: UUID) throws(DatabaseError) {
        let entry = try fetchEntry(by: id)
        modelContext.delete(entry)
        do {
            try modelContext.save()
        } catch {
            throw DatabaseError.saveFailed(error)
        }
    }
}

// MARK: - Private helpers

private extension DatabaseServiceImpl {
    func fetchEntry(by id: UUID) throws(DatabaseError) -> UserSubscription {
        var descriptor = FetchDescriptor<UserSubscription>(
            predicate: #Predicate { $0.id == id }
        )
        descriptor.fetchLimit = 1

        let results: [UserSubscription]
        
        do {
            results = try modelContext.fetch(descriptor)
        } catch {
            throw DatabaseError.fetchFailed(error)
        }

        guard let entry = results.first else {
            throw DatabaseError.notFound(id)
        }
        return entry
    }
}

// MARK: - Errors

enum DatabaseError: LocalizedError {
    case notFound(UUID)
    case fetchFailed(Error)
    case saveFailed(Error)
    case initializationFailed(Error)

    var errorDescription: String? {
        switch self {
        case let .notFound(identifierRawValue):
            "Subscription '\(identifierRawValue)' not found."
            
        case let .fetchFailed(error):
            "Failed to fetch subscriptions: \(error.localizedDescription)"
            
        case let .saveFailed(error):
            "Failed to save changes: \(error.localizedDescription)"
            
        case let .initializationFailed(error):
            "Failed to initialize database: \(error.localizedDescription)"
        }
    }
}
