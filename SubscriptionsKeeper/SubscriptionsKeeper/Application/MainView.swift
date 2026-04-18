//
//  MainView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 18.04.2026.
//

import SwiftUI

struct MainView: View {
    @Bindable var router = Router()
    
    var body: some View {
        TabView(selection: $router.selectedTabItem) {
            Tab(
                "Subscriptions",
                systemImage: "list.bullet.rectangle",
                value: TabItem.subscriptions
            ) {
                Color.purple
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
    }
}
