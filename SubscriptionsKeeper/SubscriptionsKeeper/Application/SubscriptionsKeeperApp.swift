//
//  SubscriptionsKeeperApp.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 17.04.2026.
//

import SwiftUI

@main
struct SubscriptionsKeeperApp: App {
    @State private var subscriptionsRepository: SubscriptionsRepositoryImpl

    init() {
        do throws(DatabaseError) {
            _subscriptionsRepository = State(initialValue: try SubscriptionsRepositoryImpl())
        } catch {
            fatalError("Failed to initialize database: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(subscriptionsRepository)
        }
    }
}
