//
//  Page.swift
//  SubscriptionsKeeperUITests
//
//  Created by Bohdan Pokhidnia on 22.05.2026.
//

import XCTest

/// Базовий протокол для всіх page-об'єктів. Тримає посилання на застосунок
/// і дає спільні зручні методи перевірки.
protocol Page {
    var app: XCUIApplication { get }
}

extension Page {
    /// Чекає появу елемента (обгортка над waitForExistence для читабельності в тестах).
    @discardableResult
    func waitFor(_ element: XCUIElement, timeout: TimeInterval = 5) -> Bool {
        element.waitForExistence(timeout: timeout)
    }
}

/// Launch arguments, які розуміє застосунок під час UI-тестів.
/// Має збігатися з `UITestLaunchArgument` в app-таргеті (UITestSupport.swift).
enum UITestLaunchArgument {
    static let loadingState = "-UITestLoadingState"
}
