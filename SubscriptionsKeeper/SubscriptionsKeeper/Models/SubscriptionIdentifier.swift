//
//  SubscriptionIdentifier.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

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
