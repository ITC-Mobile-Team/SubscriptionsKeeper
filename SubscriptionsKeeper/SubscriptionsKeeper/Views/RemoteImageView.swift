//
//  RemoteImageView.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import Kingfisher
import SwiftUI

struct RemoteImageView<Placeholder: View, Failure: View>: View {
    let url: URL?
    let placeholder: () -> Placeholder
    let failure: () -> Failure
    var onImageLoaded: ((UIImage) -> Void)?

    init(
        stringUrl: String,
        @ViewBuilder placeholder: @escaping () -> Placeholder,
        @ViewBuilder onFailureView: @escaping () -> Failure,
        onImageLoaded: ((UIImage) -> Void)? = nil
    ) {
        self.url = URL(string: stringUrl)
        self.placeholder = placeholder
        self.failure = onFailureView
        self.onImageLoaded = onImageLoaded
    }
    
    init(
        stringUrl: String,
        @ViewBuilder onFailureView: @escaping () -> Failure,
        onImageLoaded: ((UIImage) -> Void)? = nil
    ) where Placeholder == ProgressView<EmptyView, EmptyView> {
        self.url = URL(string: stringUrl)
        self.placeholder = { ProgressView() }
        self.failure = onFailureView
        self.onImageLoaded = onImageLoaded
    }
    
    init(
        stringUrl: String,
        onImageLoaded: ((UIImage) -> Void)? = nil
    ) where Placeholder == ProgressView<EmptyView, EmptyView>, Failure == DefaultRemoteImageFailureView {
        self.url = URL(string: stringUrl)
        self.placeholder = { ProgressView() }
        self.failure = { DefaultRemoteImageFailureView() }
        self.onImageLoaded = onImageLoaded
    }

    var body: some View {
        KFImage(url)
            .placeholder(placeholder)
            .onFailureView(failure)
            .onSuccess { result in
                onImageLoaded?(result.image)
            }
            .fade(duration: 0.25)
            .resizable()
    }
}

#Preview {
    VStack(spacing: 16) {
        RemoteImageView(stringUrl: SubscriptionIdentifier.claudePro.imageUrlString)
            .scaledToFit()
            .frame(width: 100, height: 100)

        RemoteImageView(stringUrl: "https://invalid.url/broken.png")
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
    .padding()
}
