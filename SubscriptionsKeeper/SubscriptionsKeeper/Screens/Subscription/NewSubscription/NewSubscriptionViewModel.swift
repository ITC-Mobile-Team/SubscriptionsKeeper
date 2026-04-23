//
//  NewSubscriptionViewModel.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.04.2026.
//

import SwiftUI

@Observable
final class NewSubscriptionViewModel {
    private let repository: SubscriptionsRepository
    private let router: Router
    var subscription: Subscription
    var cost: String
    
    init(
        repository: SubscriptionsRepository,
        router: Router,
        subscription: Subscription
    ) {
        self.repository = repository
        self.router = router
        self.subscription = subscription
        cost = String(subscription.cost.description.split(separator: ".0").first ?? "")
            .replacingOccurrences(of: ".", with: ",")
    }
    
    func saveButtonTapped() {
        do throws(DatabaseError) {
           try repository.add(subscription: subscription, id: UUID())
           router.dismiss()
        } catch {
            print("[dev] error when add subscription: \(error)")
        }
    }
}
