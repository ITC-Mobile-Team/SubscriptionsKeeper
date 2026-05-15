//
//  SubscriptionsEmptyView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 15.05.2026.
//


import SwiftUI

struct SubscriptionsEmptyView: View {
    var buttonTapped: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color(red: 0.88, green: 0.30, blue: 0.78),
                                Color(red: 0.98, green: 0.60, blue: 0.55)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                
                Image(systemName: "creditcard")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
            }
            .padding(.top, 40)
            
            VStack(spacing: 12) {
                Text("No subscriptions yet")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Text("Track Spotify, Netflix, iCloud\nand all your services in one place")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            
            Button {
                buttonTapped()
            } label: {
                HStack(spacing: 8) {
                    Image(systemName: "plus")
                        .font(.system(size: 18, weight: .semibold))
                    
                    Text("Add subscription")
                        .font(.system(size: 18, weight: .semibold))
                }
                .foregroundStyle(.white)
                .frame(maxWidth: UIDevice.isPad ? nil : .infinity)
                .padding(.vertical, 18)
                .padding(.horizontal, UIDevice.isPad ? 48 : nil)
                .background(
                    LinearGradient(
                        colors: [
                            Color(red: 0.55, green: 0.25, blue: 0.65),
                            Color(red: 0.85, green: 0.35, blue: 0.48)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    ),
                    in: Capsule()
                )
                .shadow(color: .black.opacity(0.15), radius: 10, y: 5)
            }
            .padding(.horizontal, 32)
            .padding(.top, 8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(16)
    }
}

#Preview {
    SubscriptionsEmptyView { }
}
