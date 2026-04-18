//
//  Router.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 18.04.2026.
//

import SwiftUI

@Observable
final class Router {
    var selectedTabItem: TabItem = .subscriptions
    var subscriptionsPath = NavigationPath()
}
