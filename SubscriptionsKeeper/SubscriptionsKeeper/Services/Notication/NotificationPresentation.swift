//
//  NotificationPresentation.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 11.05.2026.
//

import Foundation

struct NotificationContent {
    let title: String
    let body: String
    var isTimeSensitive: Bool = false
}

enum NotificationOptions {
    case alert
    case sound
    case badge
}

struct NotificationPresentation {
    let identifier: String
    let content: NotificationContent
    let options: Set<NotificationOptions>?
    let isRepeated: Bool
    let dateComponents: DateComponents
}

enum NotificationAccess {
    case success
    case denied
    case failed
}
