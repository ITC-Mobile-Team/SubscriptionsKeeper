//
//  AddSubscriptionViewModel.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import SwiftUI

@Observable
final class AddSubscriptionViewModel {
    private(set) var subscriptionSections: [SubscriptionSection] = []
    
    private let router: Router
    private let repository: SubscriptionsRepository
    
    init(router: Router, repository: SubscriptionsRepository) {
        self.router = router
        self.repository = repository
    }
    
    func onAppear() {
        subscriptionSections = repository.fetchGroupedSubscriptions()
    }
    
    func subscriptionTapped(_ subscription: Subscription) {
        router.push(SubscriptionPath.newSubscription(subscription))
    }
}
