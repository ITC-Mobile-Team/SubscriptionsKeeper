//
//  LocalNotificationScheduler.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 11.05.2026.
//

import UserNotifications

final class LocalNotificationScheduler {
    // MARK: - Initializers
    
    init(delegate: UNUserNotificationCenterDelegate? = nil) {
        if let delegate {
            center.delegate = delegate
        }
    }
    
    // MARK: - Private
    
    private let center = UNUserNotificationCenter.current()
}

// MARK: - Private Methods

private extension LocalNotificationScheduler {
    func makeNotificationContent(from content: NotificationContent) -> UNMutableNotificationContent {
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = content.title
        notificationContent.body = content.body
        notificationContent.sound = .default
        
        if content.isTimeSensitive {
            notificationContent.interruptionLevel = .timeSensitive
        }
        
        return notificationContent
    }
    
    func makeAuthorizationOptions(from notificationOptions: Set<NotificationOptions>) -> UNAuthorizationOptions {
        var options = UNAuthorizationOptions()
        
        for notificationOption in notificationOptions {
            switch notificationOption {
            case .alert:
                options.insert(.alert)
                
            case .sound:
                options.insert(.sound)
                
            case .badge:
                options.insert(.badge)
            }
        }
        
        return options
    }
}

//MARK: - NotificationScheduler

extension LocalNotificationScheduler: NotificationScheduler {
    func authorizedAccess() async -> NotificationAccess {
        let settings = await center.notificationSettings()
        let authorizationStatus = settings.authorizationStatus
        return switch authorizationStatus {
        case .authorized, .provisional: .success
        case .denied: .denied
        case .notDetermined, .ephemeral: .failed
        default: .failed
        }
    }
    
    func requestAuthorization(options: Set<NotificationOptions>?) async throws -> Bool {
        let isGranted: Bool
        
        if let options {
            let authorizationOptions = makeAuthorizationOptions(from: options)
            isGranted = try await center.requestAuthorization(options: authorizationOptions)
        } else {
            isGranted = try await center.requestAuthorization()
        }
        
        return isGranted
    }
    
    func schedule(notification: NotificationPresentation) async throws {
        let isGranted = try await requestAuthorization(options: notification.options)
        
        guard isGranted else {
            return
        }
        
        let notificationContent = makeNotificationContent(from: notification.content)
        let trigger = UNCalendarNotificationTrigger(
            dateMatching: notification.dateComponents,
            repeats: notification.isRepeated
        )
        let request = UNNotificationRequest(
            identifier: notification.identifier,
            content: notificationContent,
            trigger: trigger
        )
        
        try await center.add(request)
    }
    
    func scheduledNotifications() async -> [NotificationPresentation] {
        var notifications: [NotificationPresentation] = []
        let requests = await center.pendingNotificationRequests()
        
        for request in requests {
            guard let calendarTrigger = (request.trigger as? UNCalendarNotificationTrigger) else {
                continue
            }
            
            let content = NotificationContent(
                title: request.content.title,
                body: request.content.body
            )
            let notification = NotificationPresentation(
                identifier: request.identifier,
                content: content,
                options: nil,
                isRepeated: calendarTrigger.repeats,
                dateComponents: calendarTrigger.dateComponents
            )
            notifications.append(notification)
        }
        
        return notifications
    }
    
    func cancel(notifications: [NotificationPresentation]) {
        let notificationIdentifiers = notifications.map { $0.identifier }
        center.removePendingNotificationRequests(withIdentifiers: notificationIdentifiers)
    }
    
    func cancel(notificationIdentifier: String) {
        center.removePendingNotificationRequests(withIdentifiers: [notificationIdentifier])
    }
    
    func cancelAllNotifications() {
        center.removeAllPendingNotificationRequests()
    }
    
    func removeAllDeliveredNotifications() {
        center.removeAllDeliveredNotifications()
    }
}
