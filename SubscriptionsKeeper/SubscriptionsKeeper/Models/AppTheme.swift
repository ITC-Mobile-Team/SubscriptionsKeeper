//
//  AppTheme.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.05.2026.
//

import SwiftUI
import UIKit

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
    
    var uiStyle: UIUserInterfaceStyle {
        switch self {
        case .system: .unspecified
        case .light:  .light
        case .dark:   .dark
        }
    }
}
