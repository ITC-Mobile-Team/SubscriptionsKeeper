//
//  UITestSupport.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//
//  DEBUG-only hooks that let XCUITest drive deterministic UI states.
//  Compiled out of release builds — see `#if DEBUG`.
//

#if DEBUG
import Foundation

/// Launch arguments understood by the app when running under UI tests.
/// Keep these strings in sync with `SubscriptionsKeeperUITests`.
enum UITestLaunchArgument {
    /// Holds the Subscriptions screen in its loading state.
    static let loadingState = "-UITestLoadingState"
}

enum UITestSupport {
    /// `true` when the app was launched by a UI test that needs a forced state.
    static var isActive: Bool {
        ProcessInfo.processInfo.arguments.contains(UITestLaunchArgument.loadingState)
    }

    /// Returns a use case override for the current UI-test launch arguments, or `nil`
    /// to fall back to the production implementation.
    static func fetchDashboardSubscriptionsOverride() -> FetchDashboardSubscriptionsUseCase? {
        guard ProcessInfo.processInfo.arguments.contains(UITestLaunchArgument.loadingState) else {
            return nil
        }
        return NeverFinishingFetchDashboardSubscriptionsUseCase()
    }
}

/// Never returns, keeping `SubscriptionsViewModel.isLoading == true` so the
/// `ProgressView` stays on screen for the duration of a UI test.
private final class NeverFinishingFetchDashboardSubscriptionsUseCase: FetchDashboardSubscriptionsUseCase {
    func execute() async throws(DatabaseError) -> [Subscription] {
        try? await Task.sleep(for: .seconds(60))
        return []
    }
}
#endif
