//
//  NotificationScheduler.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 11.05.2026.
//

protocol NotificationScheduler {
    func authorizedAccess() async -> NotificationAccess
    func requestAuthorization(options: Set<NotificationOptions>?) async throws -> Bool
    func schedule(notification: NotificationPresentation) async throws
    func scheduledNotifications() async -> [NotificationPresentation]
    func cancel(notifications: [NotificationPresentation])
    func cancel(notificationIdentifier: String)
    func cancelAllNotifications()
    func removeAllDeliveredNotifications()
}
