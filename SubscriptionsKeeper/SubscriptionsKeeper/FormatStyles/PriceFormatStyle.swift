//
//  PriceFormatStyle.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.04.2026.
//

import Foundation

struct PriceFormatStyle: FormatStyle {
    let currency: Currency

    func format(_ value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        let amount = formatter.string(from: NSNumber(value: value)) ?? String(format: "%.2f", value)
        return "\(currency.symbol)\(amount)"
    }
}

extension FormatStyle where Self == PriceFormatStyle {
    static func price(currency: Currency) -> PriceFormatStyle {
        PriceFormatStyle(currency: currency)
    }
}

extension Double {
    func formatted(currency: Currency) -> String {
        PriceFormatStyle(currency: currency).format(self)
    }
}
