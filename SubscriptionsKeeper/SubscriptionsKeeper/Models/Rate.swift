//
//  Rate.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 01.05.2026.
//

struct Rate: Codable {
    var baseCurrency: Currency
    var currency: Currency
    var amount: Double
}
