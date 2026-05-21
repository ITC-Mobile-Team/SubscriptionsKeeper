//
//  UserRepositoryImpl.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 30.04.2026.
//

import Foundation

protocol UserRepository {
    var currentCurrency: Currency { get set }
    var isEnableTimeSensitiveNotifications: Bool { get set }
    var currentTheme: AppTheme { get set }
    
    func showDashboardValues(for currency: Currency) -> Bool
}

@Observable
final class UserRepositoryImpl: UserRepository {
    private struct Key {
        static let currencyKey: String = "currency"
        static let timeSensitiveNotificationsKey: String = "timeSensitiveNotification"
        static let themeKey: String = "theme"
    }
    
    var currentCurrency: Currency {
        didSet {
            localStore.save(currentCurrency, forKey: Key.currencyKey)
        }
    }
    
    var isEnableTimeSensitiveNotifications: Bool {
        didSet {
            localStore.save(isEnableTimeSensitiveNotifications, forKey: Key.timeSensitiveNotificationsKey)
        }
    }
    
    var currentTheme: AppTheme {
        didSet {
            localStore.save(currentTheme.rawValue, forKey: Key.themeKey)
        }
    }
    
    
    private let defaultCurrency: Currency = Currency.allCases.first ?? .usd
    private let defaultIsEnableTimeSensitiveNotifications = false
    private let defaultTheme: AppTheme = .system
    private let localStore = LocalStoreImpl()
    
    init() {
        self.currentCurrency = localStore.load(forKey: Key.currencyKey) ?? defaultCurrency
        self.isEnableTimeSensitiveNotifications = localStore.load(forKey: Key.timeSensitiveNotificationsKey) ?? defaultIsEnableTimeSensitiveNotifications
        self.currentTheme = localStore.load(forKey: Key.themeKey) ?? defaultTheme
    }
    
    func showDashboardValues(for currency: Currency) -> Bool {
        currentCurrency != currency
    }
}
