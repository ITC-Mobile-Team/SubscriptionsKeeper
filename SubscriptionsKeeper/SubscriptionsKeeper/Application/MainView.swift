//
//  MainView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 18.04.2026.
//

import SwiftUI

struct MainView: View {
    @Environment(SubscriptionsRepositoryImpl.self) private var subscriptionsRepository
    @State private var appRouter = AppRouter()
    @State private var subscriptionsViewModel: SubscriptionsViewModel?
    @State private var addSubscriptionViewModel: AddSubscriptionViewModel?

    var body: some View {
//        @Bindable var appRouter = appRouter
        
        TabView(selection: $appRouter.selectedTabItem) {
            Tab(
                "Subscriptions",
                systemImage: "list.bullet.rectangle",
                value: TabItem.subscriptions
            ) {
                NavigationStack(path: $appRouter.subscriptionsPath) {
                    if let subscriptionsViewModel {
                        SubscriptionsView(viewModel: subscriptionsViewModel)
                            .navigationDestination(for: SubscriptionPath.self) { route in
                                switch route {
                                case .newSubscription:
                                    EmptyView()
                                }
                            }
                    }
                }
            }

            Tab(
                "Calendar",
                systemImage: "calendar",
                value: TabItem.calendar
            ) {
                Color.green
            }
        }
        .tint(.purple)
        .task {
            if subscriptionsViewModel == nil {
                subscriptionsViewModel = SubscriptionsViewModel(repository: subscriptionsRepository, router: appRouter)
            }
            
            if addSubscriptionViewModel == nil {
                addSubscriptionViewModel = AddSubscriptionViewModel(repository: subscriptionsRepository, router: appRouter)
            }
        }
        .sheet(item: $appRouter.presentedSubscriptionRoute, onDismiss: onSheetDismiss) { route in
            switch route {
            case .addSubscription:
                if let vm = addSubscriptionViewModel {
                    NavigationStack(path: $appRouter.sheetPath) {
                        AddSubscriptionView(viewModel: vm)
                            .navigationDestination(for: SubscriptionPath.self) { route in
                                switch route {
                                case let .newSubscription(subscription):
                                    NewSubscriptionView(
                                        viewModel: NewSubscriptionViewModel(
                                            repository: subscriptionsRepository,
                                            router: appRouter,
                                            subscription: subscription
                                        )
                                    )
                                }
                            }
                    }
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.large])
                }
            }
        }
    }

    private func onSheetDismiss() {
        appRouter.sheetPath = NavigationPath()
    }
}
