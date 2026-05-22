//
//  DatabaseServiceImpl.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.04.2026.
//

import SwiftData
import Foundation

final class DatabaseServiceImpl<Record: DatabaseRecord>: DatabaseService {
    typealias DomainModel = Record.DomainModel

    private let modelContainer: ModelContainer
    private let modelContext: ModelContext

    init() throws(DatabaseError) {
        let schema = Schema([Record.self])
        let configuration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false,
            cloudKitDatabase: .private("iCloud.pokhindia.subscriptionskeeper.SubscriptionsKeeper")
        )

        do {
            modelContainer = try ModelContainer(for: schema, configurations: configuration)
        } catch {
            throw DatabaseError.initializationFailed(error)
        }
        
        modelContext = ModelContext(modelContainer)
    }

    func fetchAll() throws(DatabaseError) -> [DomainModel] {
        let descriptor = FetchDescriptor<Record>()
        let entries: [Record]
        
        do {
            entries = try modelContext.fetch(descriptor)
        } catch {
            throw DatabaseError.fetchFailed(error)
        }
        
        return entries.compactMap { $0.toDomainModel() }
    }

    func create(from model: DomainModel, id: UUID) throws(DatabaseError) {
        if let existing = try findEntry(by: id) {
            existing.update(from: model)
        } else {
            modelContext.insert(Record(from: model, id: id))
        }

        do {
            try modelContext.save()
        } catch {
            throw DatabaseError.saveFailed(error)
        }
    }

    func update(id: UUID, with model: DomainModel) throws(DatabaseError) {
        let entry = try fetchEntry(by: id)
        entry.update(from: model)
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
    func findEntry(by id: UUID) throws(DatabaseError) -> Record? {
        var descriptor = FetchDescriptor<Record>(
            predicate: #Predicate { $0.id == id }
        )
        descriptor.fetchLimit = 1

        do {
            return try modelContext.fetch(descriptor).first
        } catch {
            throw DatabaseError.fetchFailed(error)
        }
    }

    func fetchEntry(by id: UUID) throws(DatabaseError) -> Record {
        guard let entry = try findEntry(by: id) else {
            throw DatabaseError.notFound(id)
        }
        return entry
    }
}
