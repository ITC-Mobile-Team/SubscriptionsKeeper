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
    
    #if os(iOS)
    var currentTheme: AppTheme { get set }
    #endif
    
    func showDashboardValues(for currency: Currency) -> Bool
}

@Observable
final class UserRepositoryImpl: UserRepository {
    private struct Key {
        static let currencyKey: String = "currency"
        static let timeSensitiveNotificationsKey: String = "timeSensitiveNotification"
        #if os(iOS)
        static let themeKey: String = "theme"
        #endif
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
    
    #if os(iOS)
    var currentTheme: AppTheme {
        didSet {
            localStore.save(currentTheme.rawValue, forKey: Key.themeKey)
        }
    }
    #endif
    
    private let defaultCurrency: Currency = Currency.allCases.first ?? .usd
    private let defaultIsEnableTimeSensitiveNotifications = false
    #if os(iOS)
    private let defaultTheme: AppTheme = .system
    #endif
    private let localStore = LocalStoreImpl()
    
    init() {
        self.currentCurrency = localStore.load(forKey: Key.currencyKey) ?? defaultCurrency
        self.isEnableTimeSensitiveNotifications = localStore.load(forKey: Key.timeSensitiveNotificationsKey) ?? defaultIsEnableTimeSensitiveNotifications
        #if os(iOS)
        self.currentTheme = localStore.load(forKey: Key.themeKey) ?? defaultTheme
        #endif
    }
    
    func showDashboardValues(for currency: Currency) -> Bool {
        currentCurrency != currency
    }
}
