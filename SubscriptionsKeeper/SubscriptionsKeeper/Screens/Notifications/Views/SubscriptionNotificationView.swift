//
//  SubscriptionNotificationView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 08.05.2026.
//

import SwiftUI

struct SubscriptionNotificationView: View {
    let subscription: Subscription
    @Binding var isOn: Bool
    @Binding var notificationDate: Date

    private var isPad: Bool { UIDevice.isPad }
    private var imageSize: CGFloat { isPad ? 70 : 50 }
    private var imageCornerRadius: CGFloat { isPad ? 16 : 12 }
    private var titleFontSize: CGFloat { isPad ? 20 : 16 }
    private var subtitleFontSize: CGFloat { isPad ? 19 : 15 }
    private var cardPadding: CGFloat { isPad ? 16 : 12 }

    private var nextPaymentSubtitle: String {
        subscription.nextPaymentDate.formatted(.dateTime.day().month(.abbreviated))
    }

    var body: some View {
        Section {
            VStack(spacing: 4) {
                contentView
                
                if isOn {
                    VStack(spacing: 16) {
                        DatePicker("Date", selection: $notificationDate, displayedComponents: .date)
                        DatePicker("Time", selection: $notificationDate, displayedComponents: .hourAndMinute)
                    }
                    .padding([.horizontal, .bottom], 12)
                }
            }
            .background(.background, in: RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.06), radius: 8, y: 2)
            .listRowInsets(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
        }
    }
}

private extension SubscriptionNotificationView {
    var contentView: some View {
        HStack(spacing: 12) {
            RemoteImageView(stringUrl: subscription.imageUrlString)
                .scaledToFit()
                .frame(width: imageSize, height: imageSize)
                .clipShape(RoundedRectangle(cornerRadius: imageCornerRadius))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(subscription.name)
                    .font(.system(size: titleFontSize, weight: .semibold))
                    .foregroundStyle(.primary)
                
                Text(nextPaymentSubtitle)
                    .font(.system(size: subtitleFontSize))
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .tint(.purple)
        }
        .padding(cardPadding)
    }
}

#Preview {
    List {
        SubscriptionNotificationView(
            subscription: .preview(),
            isOn: .constant(true),
            notificationDate: .constant(.now)
        )
        
        SubscriptionNotificationView(
            subscription: .preview(),
            isOn: .constant(false),
            notificationDate: .constant(.now)
        )
    }
}
