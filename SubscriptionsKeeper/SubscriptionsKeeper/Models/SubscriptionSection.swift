//
//  SubscriptionSection.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//


struct SubscriptionSection: Identifiable {
    var id: SubscriptionGroup { group.id }
    
    let group: SubscriptionGroup
    let subscriptions: [Subscription]
}
