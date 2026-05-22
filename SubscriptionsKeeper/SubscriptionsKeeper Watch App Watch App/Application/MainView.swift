//
//  MainView.swift
//  SubscriptionsKeeper Watch App Watch App
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import SwiftUI

struct MockRouter: Router {
    func push(_ route: any Hashable) {
        
    }
    
    func present(_ route: PresentationRoute) {
        
    }
    
    func fullScreenPresent(_ route: PresentationRoute) {
        
    }
    
    func pop() {
        
    }
    
    func popToRoot() {
        
    }
    
    func dismiss() {
        
    }
    
    func select(tabItem: TabItem) {
        
    }
}

struct MainView: View {
    @Environment(SubscriptionsRepositoryImpl.self) private var subscriptionsRepository
    @Environment(UserRepositoryImpl.self) private var userRepository
    @Environment(RateRepositoryImpl.self) private var rateRepository
    
    @State private var subscriptionsViewModel: SubscriptionsViewModel?
    private var router = MockRouter()
    
    var body: some View {
        NavigationStack {
            if let subscriptionsViewModel {
                SubscriptionsView(viewModel: subscriptionsViewModel)
            }
        }
        .task {
            try? await rateRepository.setup(currency: userRepository.currentCurrency)
            
            let fetchDashboardSubscriptions = FetchDashboardSubscriptionsUseCaseImpl(
                subscriptionsRepository: subscriptionsRepository,
                userRepository: userRepository,
                rateRepository: rateRepository
            )
            
            if subscriptionsViewModel == nil {
                subscriptionsViewModel = SubscriptionsViewModel(
                    subscriptionsRepository: subscriptionsRepository,
                    fetchDashboardSubscriptions: fetchDashboardSubscriptions,
                    userRepository: userRepository,
                    router: router
                )
            }
        }
    }
}

#Preview {
    MainView()
}
