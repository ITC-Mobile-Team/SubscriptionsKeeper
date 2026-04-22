//
//  SubscriptionIdentifier.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

import SwiftUI

enum SubscriptionIdentifier: String {
    // AI
    case chatGPTPlus
    case claudePro
    case cursorPro
    case elevenLabs
    case geminiAdvanced
    case ideogram
    case jasper
    case leonardoAI
    case microsoftCopilotPro
    case midjourney
    case perplexityPro
    case poe
    case runway
    case sunoPro
    case superhuman
    case synthesia

    // Apple Services
    case appleArcade
    case appleDeveloperProgram
    case appleFitnessPlus
    case appleMusic
    case appleNewsPlus
    case appleOne
    case appleTVPlus
    case appleCare
    case iCloudPlus
    case iTunesMatch

    // Audio
    case audible

    // Career
    case linkedInPremium

    // Cloud
    case box
    case dropbox
    case googleOne
    case mega
    case oneDrive
    case pCloud
    case protonDrive

    // Communication
    case discordNitro
    case slackPro
    case telegramPremium
    case zoomPro

    // Creator
    case patreon

    // Delivery
    case woltPlus

    // Design
    case adobeCreativeCloud
    case canvaPro
    case figma

    // Developer Tools
    case digitalOcean
    case gitHubCopilot
    case gitLabPremium
    case heroku
    case jetBrainsAllProducts
    case linear
    case mongoDBAtlas
    case replitCore
    case vercelPro

    // Education
    case babbel
    case brilliant
    case codecademyPro
    case courseraPlus
    case duolingoSuper
    case masterClass
    case skillshare

    // Finance
    case revolutPremium
    case tradingViewEssential
    case ynab

    // Fitness
    case fitbod
    case myFitnessPalPremium
    case peloton
    case strava

    // Gaming
    case eaPlay
    case nintendoSwitchOnline
    case playStationPlus
    case ubisoftPlus
    case xboxGamePass

    // Mobility
    case boltPlus
    case uberOne

    // Music
    case deezer
    case soundCloudGoPlus
    case spotify
    case tidal
    case youTubeMusic

    // News
    case substack
    case theAthletic
    case theNewYorkTimes
    case theWallStreetJournal

    // Productivity
    case evernote
    case microsoft365
    case notion
    case obsidianSync
    case raycastPro
    case readwise
    case todoist

    // Reading
    case kindleUnlimited

    // Security
    case onePassword
    case bitwardenPremium
    case dashlane
    case expressVPN
    case nordVPN
    case protonMailPlus
    case protonPass
    case surfshark

    // Shopping
    case amazonPrime

    // Social
    case xPremium

    // Streaming
    case crunchyroll
    case disneyPlus
    case hboMax
    case hulu
    case mubi
    case netflix
    case paramountPlus
    case primeVideo
    case twitchTurbo

    // Utilities
    case setapp

    // Video
    case youTubePremium

    // Wellness
    case calm
    case headspace
    case noom

    // Writing
    case grammarly
    case mediumMember
}

extension SubscriptionIdentifier {
    var gradientColors: [Color] {
        switch self {
        // AI
        case .chatGPTPlus: [Color(red: 0.07, green: 0.73, blue: 0.60), Color(red: 0.04, green: 0.50, blue: 0.42)]
        case .claudePro: [Color(red: 0.95, green: 0.55, blue: 0.20), Color(red: 0.85, green: 0.35, blue: 0.15)]
        case .cursorPro: [Color(red: 0.30, green: 0.40, blue: 0.85), Color(red: 0.20, green: 0.25, blue: 0.65)]
        case .elevenLabs: [Color(red: 0.15, green: 0.15, blue: 0.35), Color(red: 0.30, green: 0.20, blue: 0.55)]
        case .geminiAdvanced: [Color(red: 0.25, green: 0.55, blue: 0.95), Color(red: 0.55, green: 0.25, blue: 0.90)]
        case .ideogram: [Color(red: 0.60, green: 0.20, blue: 0.90), Color(red: 0.95, green: 0.35, blue: 0.70)]
        case .jasper: [Color(red: 0.40, green: 0.20, blue: 0.80), Color(red: 0.25, green: 0.45, blue: 0.90)]
        case .leonardoAI: [Color(red: 0.10, green: 0.20, blue: 0.60), Color(red: 0.30, green: 0.10, blue: 0.70)]
        case .microsoftCopilotPro: [Color(red: 0.20, green: 0.45, blue: 0.90), Color(red: 0.50, green: 0.20, blue: 0.85)]
        case .midjourney: [Color(red: 0.12, green: 0.12, blue: 0.35), Color(red: 0.25, green: 0.18, blue: 0.55)]
        case .perplexityPro: [Color(red: 0.20, green: 0.75, blue: 0.85), Color(red: 0.10, green: 0.50, blue: 0.75)]
        case .poe: [Color(red: 0.30, green: 0.50, blue: 0.90), Color(red: 0.60, green: 0.30, blue: 0.85)]
        case .runway: [Color(red: 0.10, green: 0.10, blue: 0.25), Color(red: 0.20, green: 0.25, blue: 0.50)]
        case .sunoPro: [Color(red: 0.50, green: 0.20, blue: 0.80), Color(red: 0.95, green: 0.55, blue: 0.20)]
        case .superhuman: [Color(red: 0.90, green: 0.20, blue: 0.35), Color(red: 0.95, green: 0.55, blue: 0.15)]
        case .synthesia: [Color(red: 0.20, green: 0.50, blue: 0.90), Color(red: 0.50, green: 0.25, blue: 0.85)]
        // Apple Services
        case .appleArcade: [Color(red: 0.95, green: 0.30, blue: 0.70), Color(red: 0.65, green: 0.20, blue: 0.85)]
        case .appleDeveloperProgram: [Color(red: 0.30, green: 0.55, blue: 0.90), Color(red: 0.55, green: 0.60, blue: 0.70)]
        case .appleFitnessPlus: [Color(red: 0.20, green: 0.80, blue: 0.40), Color(red: 0.90, green: 0.25, blue: 0.35)]
        case .appleMusic: [Color(red: 0.90, green: 0.20, blue: 0.35), Color(red: 0.95, green: 0.50, blue: 0.65)]
        case .appleNewsPlus: [Color(red: 0.90, green: 0.25, blue: 0.20), Color(red: 0.95, green: 0.55, blue: 0.20)]
        case .appleOne: [Color(red: 0.25, green: 0.45, blue: 0.90), Color(red: 0.55, green: 0.20, blue: 0.85)]
        case .appleTVPlus: [Color(red: 0.10, green: 0.10, blue: 0.12), Color(red: 0.20, green: 0.20, blue: 0.25)]
        case .appleCare: [Color(red: 0.20, green: 0.55, blue: 0.90), Color(red: 0.15, green: 0.75, blue: 0.80)]
        case .iCloudPlus: [Color(red: 0.20, green: 0.55, blue: 0.95), Color(red: 0.50, green: 0.75, blue: 0.98)]
        case .iTunesMatch: [Color(red: 0.90, green: 0.35, blue: 0.65), Color(red: 0.65, green: 0.25, blue: 0.85)]
        // Audio
        case .audible: [Color(red: 0.95, green: 0.55, blue: 0.10), Color(red: 0.85, green: 0.35, blue: 0.10)]
        // Career
        case .linkedInPremium: [Color(red: 0.05, green: 0.45, blue: 0.75), Color(red: 0.03, green: 0.30, blue: 0.55)]
        // Cloud
        case .box: [Color(red: 0.05, green: 0.50, blue: 0.85), Color(red: 0.03, green: 0.35, blue: 0.65)]
        case .dropbox: [Color(red: 0.05, green: 0.50, blue: 0.90), Color(red: 0.30, green: 0.65, blue: 0.95)]
        case .googleOne: [Color(red: 0.25, green: 0.55, blue: 0.90), Color(red: 0.10, green: 0.70, blue: 0.45)]
        case .mega: [Color(red: 0.85, green: 0.15, blue: 0.25), Color(red: 0.60, green: 0.08, blue: 0.15)]
        case .oneDrive: [Color(red: 0.05, green: 0.45, blue: 0.85), Color(red: 0.25, green: 0.65, blue: 0.95)]
        case .pCloud: [Color(red: 0.10, green: 0.50, blue: 0.85), Color(red: 0.10, green: 0.70, blue: 0.75)]
        case .protonDrive: [Color(red: 0.45, green: 0.20, blue: 0.80), Color(red: 0.65, green: 0.30, blue: 0.95)]
        // Communication
        case .discordNitro: [Color(red: 0.45, green: 0.40, blue: 0.90), Color(red: 0.35, green: 0.30, blue: 0.75)]
        case .slackPro: [Color(red: 0.65, green: 0.25, blue: 0.75), Color(red: 0.20, green: 0.70, blue: 0.50)]
        case .telegramPremium: [Color(red: 0.10, green: 0.55, blue: 0.90), Color(red: 0.30, green: 0.70, blue: 0.95)]
        case .zoomPro: [Color(red: 0.10, green: 0.45, blue: 0.90), Color(red: 0.05, green: 0.30, blue: 0.70)]
        // Creator
        case .patreon: [Color(red: 0.95, green: 0.50, blue: 0.10), Color(red: 0.90, green: 0.25, blue: 0.25)]
        // Delivery
        case .woltPlus: [Color(red: 0.05, green: 0.45, blue: 0.85), Color(red: 0.10, green: 0.65, blue: 0.75)]
        // Design
        case .adobeCreativeCloud: [Color(red: 0.90, green: 0.15, blue: 0.15), Color(red: 0.65, green: 0.08, blue: 0.10)]
        case .canvaPro: [Color(red: 0.55, green: 0.25, blue: 0.85), Color(red: 0.25, green: 0.45, blue: 0.90)]
        case .figma: [Color(red: 0.95, green: 0.45, blue: 0.20), Color(red: 0.65, green: 0.25, blue: 0.85)]
        // Developer Tools
        case .digitalOcean: [Color(red: 0.05, green: 0.45, blue: 0.90), Color(red: 0.03, green: 0.30, blue: 0.70)]
        case .gitHubCopilot: [Color(red: 0.10, green: 0.10, blue: 0.15), Color(red: 0.25, green: 0.25, blue: 0.35)]
        case .gitLabPremium: [Color(red: 0.90, green: 0.45, blue: 0.15), Color(red: 0.85, green: 0.25, blue: 0.20)]
        case .heroku: [Color(red: 0.45, green: 0.20, blue: 0.70), Color(red: 0.30, green: 0.10, blue: 0.55)]
        case .jetBrainsAllProducts: [Color(red: 0.55, green: 0.20, blue: 0.80), Color(red: 0.95, green: 0.55, blue: 0.10)]
        case .linear: [Color(red: 0.40, green: 0.25, blue: 0.80), Color(red: 0.20, green: 0.45, blue: 0.85)]
        case .mongoDBAtlas: [Color(red: 0.05, green: 0.65, blue: 0.35), Color(red: 0.03, green: 0.45, blue: 0.25)]
        case .replitCore: [Color(red: 0.95, green: 0.55, blue: 0.15), Color(red: 0.20, green: 0.50, blue: 0.90)]
        case .vercelPro: [Color(red: 0.10, green: 0.10, blue: 0.12), Color(red: 0.30, green: 0.30, blue: 0.35)]
        // Education
        case .babbel: [Color(red: 0.10, green: 0.70, blue: 0.45), Color(red: 0.05, green: 0.55, blue: 0.60)]
        case .brilliant: [Color(red: 0.95, green: 0.50, blue: 0.10), Color(red: 0.85, green: 0.25, blue: 0.20)]
        case .codecademyPro: [Color(red: 0.15, green: 0.45, blue: 0.85), Color(red: 0.08, green: 0.30, blue: 0.65)]
        case .courseraPlus: [Color(red: 0.05, green: 0.45, blue: 0.90), Color(red: 0.25, green: 0.65, blue: 0.95)]
        case .duolingoSuper: [Color(red: 0.25, green: 0.80, blue: 0.30), Color(red: 0.60, green: 0.90, blue: 0.25)]
        case .masterClass: [Color(red: 0.10, green: 0.08, blue: 0.10), Color(red: 0.25, green: 0.20, blue: 0.25)]
        case .skillshare: [Color(red: 0.95, green: 0.35, blue: 0.55), Color(red: 0.95, green: 0.60, blue: 0.15)]
        // Finance
        case .revolutPremium: [Color(red: 0.05, green: 0.10, blue: 0.25), Color(red: 0.10, green: 0.30, blue: 0.60)]
        case .tradingViewEssential: [Color(red: 0.10, green: 0.50, blue: 0.85), Color(red: 0.05, green: 0.70, blue: 0.75)]
        case .ynab: [Color(red: 0.05, green: 0.65, blue: 0.65), Color(red: 0.10, green: 0.45, blue: 0.85)]
        // Fitness
        case .fitbod: [Color(red: 0.95, green: 0.45, blue: 0.10), Color(red: 0.85, green: 0.20, blue: 0.25)]
        case .myFitnessPalPremium: [Color(red: 0.05, green: 0.50, blue: 0.85), Color(red: 0.05, green: 0.70, blue: 0.65)]
        case .peloton: [Color(red: 0.90, green: 0.15, blue: 0.20), Color(red: 0.65, green: 0.08, blue: 0.12)]
        case .strava: [Color(red: 0.95, green: 0.45, blue: 0.10), Color(red: 0.85, green: 0.20, blue: 0.15)]
        // Gaming
        case .eaPlay: [Color(red: 0.10, green: 0.10, blue: 0.12), Color(red: 0.20, green: 0.20, blue: 0.25)]
        case .nintendoSwitchOnline: [Color(red: 0.90, green: 0.15, blue: 0.15), Color(red: 0.70, green: 0.08, blue: 0.10)]
        case .playStationPlus: [Color(red: 0.05, green: 0.35, blue: 0.80), Color(red: 0.03, green: 0.20, blue: 0.60)]
        case .ubisoftPlus: [Color(red: 0.10, green: 0.35, blue: 0.75), Color(red: 0.05, green: 0.15, blue: 0.50)]
        case .xboxGamePass: [Color(red: 0.10, green: 0.65, blue: 0.20), Color(red: 0.05, green: 0.45, blue: 0.12)]
        // Mobility
        case .boltPlus: [Color(red: 0.15, green: 0.75, blue: 0.30), Color(red: 0.80, green: 0.85, blue: 0.10)]
        case .uberOne: [Color(red: 0.08, green: 0.08, blue: 0.10), Color(red: 0.20, green: 0.20, blue: 0.25)]
        // Music
        case .deezer: [Color(red: 0.55, green: 0.20, blue: 0.85), Color(red: 0.90, green: 0.35, blue: 0.65)]
        case .soundCloudGoPlus: [Color(red: 0.95, green: 0.50, blue: 0.10), Color(red: 0.80, green: 0.30, blue: 0.05)]
        case .spotify: [Color(red: 0.11, green: 0.73, blue: 0.33), Color(red: 0.07, green: 0.50, blue: 0.22)]
        case .tidal: [Color(red: 0.08, green: 0.12, blue: 0.20), Color(red: 0.15, green: 0.35, blue: 0.55)]
        case .youTubeMusic: [Color(red: 0.90, green: 0.15, blue: 0.15), Color(red: 0.65, green: 0.08, blue: 0.08)]
        // News
        case .substack: [Color(red: 0.95, green: 0.55, blue: 0.15), Color(red: 0.85, green: 0.40, blue: 0.10)]
        case .theAthletic: [Color(red: 0.10, green: 0.12, blue: 0.15), Color(red: 0.25, green: 0.30, blue: 0.38)]
        case .theNewYorkTimes: [Color(red: 0.08, green: 0.08, blue: 0.10), Color(red: 0.20, green: 0.20, blue: 0.22)]
        case .theWallStreetJournal: [Color(red: 0.08, green: 0.15, blue: 0.35), Color(red: 0.15, green: 0.30, blue: 0.55)]
        // Productivity
        case .evernote: [Color(red: 0.15, green: 0.65, blue: 0.30), Color(red: 0.08, green: 0.45, blue: 0.20)]
        case .microsoft365: [Color(red: 0.10, green: 0.45, blue: 0.85), Color(red: 0.05, green: 0.30, blue: 0.65)]
        case .notion: [Color(red: 0.10, green: 0.10, blue: 0.12), Color(red: 0.25, green: 0.25, blue: 0.30)]
        case .obsidianSync: [Color(red: 0.40, green: 0.20, blue: 0.75), Color(red: 0.60, green: 0.30, blue: 0.90)]
        case .raycastPro: [Color(red: 0.95, green: 0.45, blue: 0.15), Color(red: 0.90, green: 0.25, blue: 0.55)]
        case .readwise: [Color(red: 0.95, green: 0.80, blue: 0.15), Color(red: 0.95, green: 0.50, blue: 0.10)]
        case .todoist: [Color(red: 0.85, green: 0.20, blue: 0.20), Color(red: 0.65, green: 0.10, blue: 0.10)]
        // Reading
        case .kindleUnlimited: [Color(red: 0.95, green: 0.60, blue: 0.10), Color(red: 0.80, green: 0.35, blue: 0.05)]
        // Security
        case .onePassword: [Color(red: 0.05, green: 0.50, blue: 0.85), Color(red: 0.03, green: 0.35, blue: 0.65)]
        case .bitwardenPremium: [Color(red: 0.10, green: 0.45, blue: 0.85), Color(red: 0.05, green: 0.30, blue: 0.65)]
        case .dashlane: [Color(red: 0.50, green: 0.25, blue: 0.80), Color(red: 0.20, green: 0.45, blue: 0.85)]
        case .expressVPN: [Color(red: 0.85, green: 0.20, blue: 0.20), Color(red: 0.65, green: 0.08, blue: 0.10)]
        case .nordVPN: [Color(red: 0.05, green: 0.40, blue: 0.80), Color(red: 0.03, green: 0.25, blue: 0.60)]
        case .protonMailPlus: [Color(red: 0.45, green: 0.20, blue: 0.80), Color(red: 0.65, green: 0.30, blue: 0.90)]
        case .protonPass: [Color(red: 0.50, green: 0.25, blue: 0.80), Color(red: 0.65, green: 0.30, blue: 0.90)]
        case .surfshark: [Color(red: 0.05, green: 0.70, blue: 0.65), Color(red: 0.10, green: 0.55, blue: 0.35)]
        // Shopping
        case .amazonPrime: [Color(red: 0.95, green: 0.60, blue: 0.10), Color(red: 0.10, green: 0.50, blue: 0.85)]
        // Social
        case .xPremium: [Color(red: 0.05, green: 0.05, blue: 0.08), Color(red: 0.15, green: 0.15, blue: 0.20)]
        // Streaming
        case .crunchyroll: [Color(red: 0.95, green: 0.55, blue: 0.15), Color(red: 0.80, green: 0.30, blue: 0.05)]
        case .disneyPlus: [Color(red: 0.05, green: 0.30, blue: 0.80), Color(red: 0.15, green: 0.10, blue: 0.50)]
        case .hboMax: [Color(red: 0.45, green: 0.15, blue: 0.70), Color(red: 0.30, green: 0.08, blue: 0.50)]
        case .hulu: [Color(red: 0.10, green: 0.75, blue: 0.40), Color(red: 0.05, green: 0.50, blue: 0.25)]
        case .mubi: [Color(red: 0.85, green: 0.20, blue: 0.20), Color(red: 0.60, green: 0.10, blue: 0.10)]
        case .netflix: [Color(red: 0.85, green: 0.10, blue: 0.10), Color(red: 0.55, green: 0.05, blue: 0.05)]
        case .paramountPlus: [Color(red: 0.10, green: 0.40, blue: 0.85), Color(red: 0.05, green: 0.25, blue: 0.65)]
        case .primeVideo: [Color(red: 0.05, green: 0.40, blue: 0.85), Color(red: 0.10, green: 0.25, blue: 0.65)]
        case .twitchTurbo: [Color(red: 0.55, green: 0.25, blue: 0.85), Color(red: 0.35, green: 0.15, blue: 0.65)]
        // Utilities
        case .setapp: [Color(red: 0.25, green: 0.45, blue: 0.85), Color(red: 0.50, green: 0.25, blue: 0.80)]
        // Video
        case .youTubePremium: [Color(red: 0.90, green: 0.10, blue: 0.10), Color(red: 0.60, green: 0.05, blue: 0.05)]
        // Wellness
        case .calm: [Color(red: 0.15, green: 0.60, blue: 0.85), Color(red: 0.10, green: 0.75, blue: 0.70)]
        case .headspace: [Color(red: 0.95, green: 0.55, blue: 0.15), Color(red: 0.90, green: 0.30, blue: 0.25)]
        case .noom: [Color(red: 0.95, green: 0.55, blue: 0.10), Color(red: 0.15, green: 0.70, blue: 0.40)]
        // Writing
        case .grammarly: [Color(red: 0.10, green: 0.65, blue: 0.35), Color(red: 0.05, green: 0.45, blue: 0.25)]
        case .mediumMember: [Color(red: 0.12, green: 0.12, blue: 0.14), Color(red: 0.28, green: 0.28, blue: 0.32)]
        }
    }
}

extension SubscriptionIdentifier {
    var imageUrlString: String {
        "https://www.google.com/s2/favicons?domain=\(domain)&sz=256"
    }

    private var domain: String {
        switch self {
        // AI
        case .chatGPTPlus: "openai.com"
        case .claudePro: "claude.ai"
        case .cursorPro: "cursor.sh"
        case .elevenLabs: "elevenlabs.io"
        case .geminiAdvanced: "gemini.google.com"
        case .ideogram: "ideogram.ai"
        case .jasper: "jasper.ai"
        case .leonardoAI: "leonardo.ai"
        case .microsoftCopilotPro: "microsoft.com"
        case .midjourney: "midjourney.com"
        case .perplexityPro: "perplexity.ai"
        case .poe: "poe.com"
        case .runway: "runwayml.com"
        case .sunoPro: "suno.ai"
        case .superhuman: "superhuman.com"
        case .synthesia: "synthesia.io"
        // Apple Services
        case .appleArcade: "apple.com"
        case .appleDeveloperProgram: "developer.apple.com"
        case .appleFitnessPlus: "apple.com"
        case .appleMusic: "apple.com"
        case .appleNewsPlus: "apple.com"
        case .appleOne: "apple.com"
        case .appleTVPlus: "apple.com"
        case .appleCare: "apple.com"
        case .iCloudPlus: "icloud.com"
        case .iTunesMatch: "apple.com"
        // Audio
        case .audible: "audible.com"
        // Career
        case .linkedInPremium: "linkedin.com"
        // Cloud
        case .box: "box.com"
        case .dropbox: "dropbox.com"
        case .googleOne: "google.com"
        case .mega: "mega.io"
        case .oneDrive: "microsoft.com"
        case .pCloud: "pcloud.com"
        case .protonDrive: "proton.me"
        // Communication
        case .discordNitro: "discord.com"
        case .slackPro: "slack.com"
        case .telegramPremium: "telegram.org"
        case .zoomPro: "zoom.us"
        // Creator
        case .patreon: "patreon.com"
        // Delivery
        case .woltPlus: "wolt.com"
        // Design
        case .adobeCreativeCloud: "adobe.com"
        case .canvaPro: "canva.com"
        case .figma: "figma.com"
        // Developer Tools
        case .digitalOcean: "digitalocean.com"
        case .gitHubCopilot: "github.com"
        case .gitLabPremium: "gitlab.com"
        case .heroku: "heroku.com"
        case .jetBrainsAllProducts: "jetbrains.com"
        case .linear: "linear.app"
        case .mongoDBAtlas: "mongodb.com"
        case .replitCore: "replit.com"
        case .vercelPro: "vercel.com"
        // Education
        case .babbel: "babbel.com"
        case .brilliant: "brilliant.org"
        case .codecademyPro: "codecademy.com"
        case .courseraPlus: "coursera.org"
        case .duolingoSuper: "duolingo.com"
        case .masterClass: "masterclass.com"
        case .skillshare: "skillshare.com"
        // Finance
        case .revolutPremium: "revolut.com"
        case .tradingViewEssential: "tradingview.com"
        case .ynab: "ynab.com"
        // Fitness
        case .fitbod: "fitbod.me"
        case .myFitnessPalPremium: "myfitnesspal.com"
        case .peloton: "onepeloton.com"
        case .strava: "strava.com"
        // Gaming
        case .eaPlay: "ea.com"
        case .nintendoSwitchOnline: "nintendo.com"
        case .playStationPlus: "playstation.com"
        case .ubisoftPlus: "ubisoft.com"
        case .xboxGamePass: "xbox.com"
        // Mobility
        case .boltPlus: "bolt.eu"
        case .uberOne: "uber.com"
        // Music
        case .deezer: "deezer.com"
        case .soundCloudGoPlus: "soundcloud.com"
        case .spotify: "spotify.com"
        case .tidal: "tidal.com"
        case .youTubeMusic: "youtube.com"
        // News
        case .substack: "substack.com"
        case .theAthletic: "theathletic.com"
        case .theNewYorkTimes: "nytimes.com"
        case .theWallStreetJournal: "wsj.com"
        // Productivity
        case .evernote: "evernote.com"
        case .microsoft365: "microsoft.com"
        case .notion: "notion.so"
        case .obsidianSync: "obsidian.md"
        case .raycastPro: "raycast.com"
        case .readwise: "readwise.io"
        case .todoist: "todoist.com"
        // Reading
        case .kindleUnlimited: "amazon.com"
        // Security
        case .onePassword: "1password.com"
        case .bitwardenPremium: "bitwarden.com"
        case .dashlane: "dashlane.com"
        case .expressVPN: "expressvpn.com"
        case .nordVPN: "nordvpn.com"
        case .protonMailPlus: "proton.me"
        case .protonPass: "proton.me"
        case .surfshark: "surfshark.com"
        // Shopping
        case .amazonPrime: "amazon.com"
        // Social
        case .xPremium: "x.com"
        // Streaming
        case .crunchyroll: "crunchyroll.com"
        case .disneyPlus: "disneyplus.com"
        case .hboMax: "max.com"
        case .hulu: "hulu.com"
        case .mubi: "mubi.com"
        case .netflix: "netflix.com"
        case .paramountPlus: "paramountplus.com"
        case .primeVideo: "primevideo.com"
        case .twitchTurbo: "twitch.tv"
        // Utilities
        case .setapp: "setapp.com"
        // Video
        case .youTubePremium: "youtube.com"
        // Wellness
        case .calm: "calm.com"
        case .headspace: "headspace.com"
        case .noom: "noom.com"
        // Writing
        case .grammarly: "grammarly.com"
        case .mediumMember: "medium.com"
        }
    }
}
