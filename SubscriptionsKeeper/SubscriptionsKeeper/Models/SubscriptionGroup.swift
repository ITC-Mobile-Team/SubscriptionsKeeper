//
//  SubscriptionGroup.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

enum SubscriptionGroup: CaseIterable, Identifiable {
    case ai
    case appleServices
    case audio
    case career
    case cloud
    case communication
    case creator
    case delivery
    case design
    case developerTools
    case education
    case finance
    case fitness
    case gaming
    case mobility
    case music
    case news
    case productivity
    case reading
    case security
    case shopping
    case social
    case streaming
    case utilities
    case video
    case wellness
    case writing

    var id: Self { self }

    var title: String {
        switch self {
        case .ai: "AI"
        case .appleServices: "Apple Services"
        case .audio: "Audio"
        case .career: "Career"
        case .cloud: "Cloud"
        case .communication: "Communication"
        case .creator: "Creator"
        case .delivery: "Delivery"
        case .design: "Design"
        case .developerTools: "Developer Tools"
        case .education: "Education"
        case .finance: "Finance"
        case .fitness: "Fitness"
        case .gaming: "Gaming"
        case .mobility: "Mobility"
        case .music: "Music"
        case .news: "News"
        case .productivity: "Productivity"
        case .reading: "Reading"
        case .security: "Security"
        case .shopping: "Shopping"
        case .social: "Social"
        case .streaming: "Streaming"
        case .utilities: "Utilities"
        case .video: "Video"
        case .wellness: "Wellness"
        case .writing: "Writing"
        }
    }
}
