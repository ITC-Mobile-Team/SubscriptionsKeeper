//
//  UIDevice.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 15.05.2026.
//

import UIKit

extension UIDevice {
    static var isPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
}
