//
//  SubscriptionView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 23.04.2026.
//

import SwiftUI

struct SubscriptionView: View {
    let subscription: Subscription
    let date: String

    private var isPad: Bool { UIDevice.isPad }
    private var imageSize: CGFloat { isPad ? 70 : 50 }
    private var imageCornerRadius: CGFloat { isPad ? 16 : 12 }
    private var titleFontSize: CGFloat { isPad ? 20 : 16 }
    private var subtitleFontSize: CGFloat { isPad ? 19 : 15 }
    private var costFontSize: CGFloat { isPad ? 22 : 17 }
    private var originalCostFontSize: CGFloat { isPad ? 17 : 12 }
    private var dateFontSize: CGFloat { isPad ? 18 : 12 }
    private var cardPadding: CGFloat { isPad ? 16 : 12 }

    private var subtitle: String {
        let cycleAndCurrency = "\(subscription.paymentCycle.displayName) • \(subscription.currency.abbreviation)"
        guard !subscription.description.isEmpty else {
            return cycleAndCurrency
        }
        return "\(subscription.description) • \(cycleAndCurrency)"
    }

    var body: some View {
        HStack(spacing: 12) {
            RemoteImageView(stringUrl: subscription.imageUrlString)
                .scaledToFit()
                .frame(width: imageSize, height: imageSize)
                .clipShape(RoundedRectangle(cornerRadius: imageCornerRadius))

            VStack(alignment: .leading, spacing: 4) {
                Text(subscription.name)
                    .font(.system(size: titleFontSize, weight: .semibold))
                    .foregroundStyle(.primary)

                Text(subtitle)
                    .font(.system(size: subtitleFontSize))
                    .foregroundStyle(.secondary)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                if let dashboardCost = subscription.formattedConvertedCost() {
                    Text(dashboardCost)
                        .font(.system(size: costFontSize, weight: .bold))
                        .foregroundStyle(.primary)

                    Text(subscription.cost.formatted(.price(currency: subscription.currency)))
                        .font(.system(size: originalCostFontSize))
                        .foregroundStyle(.secondary)
                } else {
                    Text(subscription.cost.formatted(.price(currency: subscription.currency)))
                        .font(.system(size: costFontSize, weight: .bold))
                        .foregroundStyle(.primary)
                }

                Text(date)
                    .font(.system(size: dateFontSize))
                    .foregroundStyle(.secondary)
            }
        }
        .padding(cardPadding)
        .background(.background, in: RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.06), radius: 8, y: 2)
    }
}

#Preview {
    SubscriptionView(
        subscription: .preview(),
        date: "20 Jan"
    )
    .padding()
}
