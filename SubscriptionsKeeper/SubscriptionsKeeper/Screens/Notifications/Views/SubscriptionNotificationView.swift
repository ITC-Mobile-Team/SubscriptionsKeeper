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
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(subscription.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.primary)
                
                Text(nextPaymentSubtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .tint(.purple)
        }
        .padding(12)
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
