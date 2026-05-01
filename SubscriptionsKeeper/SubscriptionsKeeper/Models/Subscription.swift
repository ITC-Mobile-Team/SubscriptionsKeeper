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
    var dashboardCost: Double?
    var dashboardCurrency: Currency?
}

extension Subscription {
    var yearlyCost: Double {
        paymentCycle == .monthly ? cost * 12 : cost
    }
    
    func formattedConvertedCost() -> String? {
        guard let dashboardCost, let dashboardCurrency else { return nil }
        return "~ " + (dashboardCost).formatted(.price(currency: dashboardCurrency))
    }

    func formattedConvertedYearlyCost() -> String? {
        guard let dashboardCost, let dashboardCurrency else { return nil }
        return "~ " + (12 * dashboardCost).formatted(.price(currency: dashboardCurrency))
    }
}

extension Subscription {
    static func preview(
        identifier: SubscriptionIdentifier = .claudePro,
        name: String = "Claude Pro",
        description: String = ""
    ) -> Self {
        Subscription(
            id: UUID(),
            identifier: identifier,
            group: .ai,
            name: name,
            description: description,
            cost: 24.00,
            currency: .usd,
            paymentCycle: .monthly,
            firstPaymentAt: .now
        )
    }
}
