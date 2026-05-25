//
//  SubscriptionsViewUITests.swift
//  SubscriptionsKeeperUITests
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import XCTest

final class SubscriptionsViewUITests: XCTestCase {
    private var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    /// Запускає застосунок і повертає page object головного екрана.
    /// Окремий хелпер (а не launch у setUp), бо деяким тестам потрібно
    /// виставити launchArguments перед запуском.
    @MainActor
    @discardableResult
    private func launchSubscriptions(arguments: [String] = []) -> SubscriptionsScreen {
        app.launchArguments += arguments
        app.launch()
        return SubscriptionsScreen(app: app)
    }

    // MARK: - Empty state

    @MainActor
    func test_whenNoSubscriptions_showsEmptyView() {
        let subscriptions = launchSubscriptions()

        XCTAssertTrue(
            subscriptions.emptyView.waitForExistence(timeout: 10)
                || subscriptions.emptyTitle.waitForExistence(timeout: 10),
            "Empty view not display"
        )
        XCTAssertTrue(subscriptions.emptyTitle.exists)
        XCTAssertTrue(subscriptions.emptyAddButton.exists)
    }

    // MARK: - Loading state

    @MainActor
    func test_whenLoading_showsProgressView() {
        let subscriptions = launchSubscriptions(arguments: [UITestLaunchArgument.loadingState])

        XCTAssertTrue(
            subscriptions.loadingIndicator.waitForExistence(timeout: 10)
                || subscriptions.anyLoadingIndicator.waitForExistence(timeout: 2),
            "ProgressView not found"
        )

        // Empty view не має показуватись, доки триває loading.
        XCTAssertFalse(subscriptions.emptyTitle.exists)
    }

    // MARK: - Navigation to Settings

    @MainActor
    func test_whenSettingsButtonTapped_showsSettingsScreen() {
        let subscriptions = launchSubscriptions()
        XCTAssertTrue(subscriptions.settingsButton.waitForExistence(timeout: 10), "Settings button not found")

        let settings = subscriptions.tapSettings()

        XCTAssertTrue(settings.isDisplayed(), "SettingsView not present after tap on button")
        XCTAssertTrue(settings.doneButton.exists)
    }

    // MARK: - Navigation to Add Subscription

    @MainActor
    func test_whenAddButtonTapped_showAddSubscriptionsScreen() {
        let subscriptions = launchSubscriptions()
        XCTAssertTrue(subscriptions.addButton.waitForExistence(timeout: 10), "Add button not found")

        let addSubscription = subscriptions.tapAdd()

        XCTAssertTrue(addSubscription.isDisplayed(), "AddSubscriptionView not display after tap on button")
    }

    @MainActor
    func test_whenSwipeDownOnAddSubscription_hidesScreen() {
        let subscriptions = launchSubscriptions()
        XCTAssertTrue(subscriptions.addButton.waitForExistence(timeout: 10), "Add button not found")

        let addSubscription = subscriptions.tapAdd()
        XCTAssertTrue(addSubscription.isDisplayed(), "AddSubscriptionView not display before swipe down")

        let subscriptionsAgain = addSubscription.swipeDownToDismiss()

        XCTAssertTrue(
            addSubscription.waitUntilDismissed(),
            "AddSubscriptionView мав зникнути після свайпу вниз."
        )
        XCTAssertTrue(
            subscriptionsAgain.addButton.waitForExistence(timeout: 10),
            "Головний екран не повернувся після закриття sheet."
        )
    }
}
