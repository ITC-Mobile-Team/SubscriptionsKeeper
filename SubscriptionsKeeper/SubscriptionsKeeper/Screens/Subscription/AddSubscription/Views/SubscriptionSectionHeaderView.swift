//
//  SubscriptionSectionHeaderView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import SwiftUI

struct SubscriptionSectionHeaderView: View {
    let title: String
    let count: Int

    var body: some View {
        HStack(spacing: 12) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.primary)

            Text(count.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal, 8)
                .padding(.vertical, 2)
                .background(Color(.systemGray5), in: Capsule())

            Rectangle()
                .fill(Color(.systemGray5))
                .frame(height: 1)
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        SubscriptionSectionHeaderView(title: "Apple Services", count: 10)
        
        SubscriptionSectionHeaderView(title: "Google Services", count: 100)
    }
    .padding()
}
