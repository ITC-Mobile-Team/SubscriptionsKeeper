//
//  NewSubscriptionViewModel.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.04.2026.
//

import SwiftUI

@Observable
final class NewSubscriptionViewModel {
    var subscription: Subscription
    var cost: String
    
    init(subscription: Subscription) {
        self.subscription = subscription
        cost = String(subscription.cost.description.split(separator: ".0").first ?? "")
            .replacingOccurrences(of: ".", with: ",")
    }
}
