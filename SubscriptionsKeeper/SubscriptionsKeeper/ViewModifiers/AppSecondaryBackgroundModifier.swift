//
//  AppSecondaryBackgroundModifier.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.05.2026.
//

import SwiftUI

private struct AppSecondaryBackgroundModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .background(colorScheme == .light ? .white : .white.opacity(0.06), in: RoundedRectangle(cornerRadius: 16))
    }
}

extension View {
    func appSecondaryBackground() -> some View {
        modifier(AppSecondaryBackgroundModifier())
    }
}
