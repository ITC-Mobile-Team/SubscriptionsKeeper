//
//  SubscriptionsScreen.swift
//  SubscriptionsKeeperUITests
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import XCTest

/// Page object головного екрана підписок (вкладка Subscriptions).
struct SubscriptionsScreen: Page {
    let app: XCUIApplication

    // MARK: - Loading

    var loadingIndicator: XCUIElement { app.activityIndicators["subscriptions.loadingIndicator"] }
    var anyLoadingIndicator: XCUIElement { app.activityIndicators.firstMatch }

    // MARK: - Empty state

    var emptyView: XCUIElement { app.descendants(matching: .any)["subscriptions.emptyView"] }
    var emptyTitle: XCUIElement { app.staticTexts["No subscriptions yet"] }
    var emptyAddButton: XCUIElement { app.buttons["Add subscription"] }

    // MARK: - Toolbar

    var settingsButton: XCUIElement { app.buttons["subscriptions.settingsButton"] }
    var addButton: XCUIElement { app.buttons["subscriptions.addButton"] }

    // MARK: - Navigation

    @discardableResult
    func tapSettings() -> SettingsScreen {
        settingsButton.tap()
        return SettingsScreen(app: app)
    }

    @discardableResult
    func tapAdd() -> AddSubscriptionScreen {
        addButton.tap()
        return AddSubscriptionScreen(app: app)
    }
}
