//
//  AppTheme.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.05.2026.
//

enum AppTheme: Int, Codable, CaseIterable {
    case system
    case light
    case dark
    
    var title: String {
        switch self {
        case .system: "System"
        case .light: "Light"
        case .dark: "Dark"
        }
    }
}
