//
//  SettingsScreen.swift
//  SubscriptionsKeeperUITests
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import XCTest

/// Page object екрана налаштувань (презентується модально).
struct SettingsScreen: Page {
    let app: XCUIApplication

    var view: XCUIElement { app.descendants(matching: .any)["settings.view"] }
    var mainCurrencyLabel: XCUIElement { app.staticTexts["Main Currency"] }
    var doneButton: XCUIElement { app.buttons["Done"] }

    /// Чи відображається екран. Якір — identifier кореня з fallback на унікальний текст.
    func isDisplayed(timeout: TimeInterval = 5) -> Bool {
        view.waitForExistence(timeout: timeout)
            || mainCurrencyLabel.waitForExistence(timeout: timeout)
    }
}
