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
