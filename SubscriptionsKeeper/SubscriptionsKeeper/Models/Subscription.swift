//
//  Subscription.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import Foundation

struct Subscription: Hashable, Equatable, Identifiable {
    var imageUrlString: String { identifier.imageUrlString }

    var id: UUID
    let identifier: SubscriptionIdentifier
    let group: SubscriptionGroup
    var name: String
    var description: String = ""
    var cost: Double
    var currency: Currency
    var paymentCycle: PaymentCycle = .monthly
    var firstPaymentAt: Date = .now
}

extension Subscription {
    static func preview(identifier: SubscriptionIdentifier = .claudePro, name: String = "Claude Pro") -> Self {
        Subscription(
            id: UUID(),
            identifier: identifier,
            group: .ai,
            name: name,
            cost: 24.00,
            currency: .usd,
            paymentCycle: .monthly,
            firstPaymentAt: .now
        )
    }
}
