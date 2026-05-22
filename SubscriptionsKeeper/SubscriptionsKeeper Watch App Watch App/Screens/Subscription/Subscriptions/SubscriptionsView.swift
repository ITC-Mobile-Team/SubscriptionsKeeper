//
//  SubscriptionsView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import SwiftUI

struct SubscriptionsView: View {
    @Bindable var viewModel: SubscriptionsViewModel
    
    var body: some View {
        ScrollView {
            contentView
        }
        .overlay {
            if viewModel.isLoading {
                loadingView
            }
        }
        .task {
            await viewModel.onAppear()
        }
    }
}

private extension SubscriptionsView {
    var loadingView: some View {
        ProgressView()
    }
    
    var contentView: some View {
        VStack {
            ForEach(viewModel.subscriptions) { subscription in
                subscriptionView(subscription: subscription)
            }
        }
    }
    
    func subscriptionView(subscription: Subscription) -> some View {
        HStack {
            Rectangle()
                .fill(.red)
                .frame(width: 40, height: 40)
            
            Text(subscription.name)
        }
    }
}

#Preview {
    SubscriptionsView(
        viewModel: SubscriptionsViewModel(
            subscriptionsRepository: try! SubscriptionsRepositoryImpl(),
            fetchDashboardSubscriptions: FetchDashboardSubscriptionsUseCaseImpl(
                subscriptionsRepository: try! SubscriptionsRepositoryImpl(),
                userRepository: UserRepositoryImpl(),
                rateRepository: RateRepositoryImpl()
            ),
            userRepository: UserRepositoryImpl(),
            router: MockRouter()
        )
    )
}
