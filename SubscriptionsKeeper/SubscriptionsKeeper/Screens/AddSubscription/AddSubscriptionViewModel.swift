//
//  AddSubscriptionViewModel.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import SwiftUI

@Observable
final class AddSubscriptionViewModel {
    private(set) var subscriptions: [Subscription] = []
    
    private let repository: SubscriptionsRepository
    
    init(repository: SubscriptionsRepository) {
        self.repository = repository
    }
    
    func onAppear() {
        subscriptions = repository.fetchAvailableSubscriptions()
    }
}
