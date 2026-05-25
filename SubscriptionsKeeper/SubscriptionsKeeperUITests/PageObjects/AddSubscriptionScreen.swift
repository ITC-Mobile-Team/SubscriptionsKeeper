//
//  AddSubscriptionScreen.swift
//  SubscriptionsKeeperUITests
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import XCTest

/// Page object екрана додавання підписки (презентується модально).
struct AddSubscriptionScreen: Page {
    let app: XCUIApplication

    // descendants(matching: .any) — універсальний пошук за identifier,
    // не залежить від типу елемента (ScrollView може виринати не як otherElement).
    var view: XCUIElement { app.descendants(matching: .any)["addSubscription.view"] }

    func isDisplayed(timeout: TimeInterval = 5) -> Bool {
        view.waitForExistence(timeout: timeout)
    }

    /// Чи закрився sheet (елемент зник протягом таймауту).
    func waitUntilDismissed(timeout: TimeInterval = 5) -> Bool {
        view.waitForNonExistence(timeout: timeout)
    }

    /// Закриває sheet протягуванням униз. `swipeDown()` усередині ScrollView лише
    /// скролить вміст, тому тягнемо за навігаційний бар (нескролюваний регіон)
    /// аж до низу екрана — довгий drag за поріг закриває sheet.
    /// Нормалізовані координати (0…1) не залежать від розміру екрана.
    @discardableResult
    func swipeDownToDismiss() -> SubscriptionsScreen {
        let navBar = app.navigationBars["Subscriptions"]
        let start = navBar.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
        let finish = app.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.95))
        start.press(forDuration: 0.15, thenDragTo: finish)
        return SubscriptionsScreen(app: app)
    }
}
