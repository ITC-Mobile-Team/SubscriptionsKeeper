//
//  PresentationRoute.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

enum PresentationRoute: Hashable, Identifiable {
    var id: Self { self }
    
    case addSubscription
    case newSubscription(_ subscription: Subscription, mode: Mode)
    case details(subscription: Subscription)
    case settings
}

enum Mode {
    case create
    case edit
}
