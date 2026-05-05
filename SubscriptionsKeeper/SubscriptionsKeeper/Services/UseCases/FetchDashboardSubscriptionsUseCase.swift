//
//  FetchDashboardSubscriptionsUseCase.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 04.05.2026.
//

import Foundation

protocol FetchDashboardSubscriptionsUseCase {
    func execute() async throws(DatabaseError) -> [Subscription]
}

final class FetchDashboardSubscriptionsUseCaseImpl: FetchDashboardSubscriptionsUseCase {
    private let subscriptionsRepository: SubscriptionsRepository
    private let userRepository: UserRepository
    private let rateRepository: RateRepository

    init(
        subscriptionsRepository: SubscriptionsRepository,
        userRepository: UserRepository,
        rateRepository: RateRepository
    ) {
        self.subscriptionsRepository = subscriptionsRepository
        self.userRepository = userRepository
        self.rateRepository = rateRepository
    }

    func execute() async throws(DatabaseError) -> [Subscription] {
        do {
            var subscriptions = try subscriptionsRepository.fetchAll()
            let targetCurrency = userRepository.currentCurrency
            
            for (index, subscription) in subscriptions.enumerated() {
                guard subscription.currency != targetCurrency else {
                    continue
                }
                let rates = try await rateRepository.fetchRate(baseCurrency: subscription.currency)
                
                guard let rate = rates.first(where: { $0.currency == targetCurrency }) else {
                    continue
                }
                subscriptions[index].dashboardCost = subscription.cost * rate.amount
                subscriptions[index].dashboardCurrency = targetCurrency
            }
            
            return subscriptions
        } catch {
            throw .fetchFailed(error)
        }
    }
}
