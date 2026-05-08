//
//  NotificationsView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 07.05.2026.
//

import SwiftUI

struct NotificationsView: View {
    @Bindable var viewModel: NotificationsViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.subscriptions) { subscription in
                SubscriptionNotificationView(
                    subscription: subscription,
                    isOn: Binding(
                        get: { viewModel.notificationStates[subscription.id, default: false] },
                        set: { viewModel.notificationStates[subscription.id] = $0 }
                    ),
                    notificationDate: Binding(
                        get: { viewModel.notificationDates[subscription.id, default: .now] },
                        set: { viewModel.notificationDates[subscription.id] = $0 }
                    )
                )
            }
        }
        .listStyle(.plain)
        .navigationTitle("Notifications")
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    NavigationStack {
        NotificationsView(
            viewModel: NotificationsViewModel(
                subscriptionsRepository: try! SubscriptionsRepositoryImpl()
            )
        )
    }
}
