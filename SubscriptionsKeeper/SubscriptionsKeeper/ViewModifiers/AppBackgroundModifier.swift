//
//  AppBackgroundModifier.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.05.2026.
//

import SwiftUI

private struct AppBackgroundModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .background(colorScheme == .light ? .white : Color(hex: "#151121"))
    }
}

extension View {
    func appBackground() -> some View {
        modifier(AppBackgroundModifier())
    }
}
