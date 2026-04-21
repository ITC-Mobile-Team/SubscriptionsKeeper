//
//  SubscriptionsRepositoryImpl.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

protocol SubscriptionsRepository {
    func fetchAvailableSubscriptions() -> [Subscription]
    func fetchGroupedSubscriptions() -> [SubscriptionSection]
}

final class SubscriptionsRepositoryImpl: SubscriptionsRepository {
    func fetchAvailableSubscriptions() -> [Subscription] {
        [
            Subscription(identifier: .chatGPTPlus, name: "ChatGPT Plus", group: .ai),
            Subscription(identifier: .claudePro, name: "Claude Pro", group: .ai),
            Subscription(identifier: .cursorPro, name: "Cursor Pro", group: .ai),
            Subscription(identifier: .elevenLabs, name: "ElevenLabs", group: .ai),
            Subscription(identifier: .geminiAdvanced, name: "Gemini Advanced", group: .ai),
            Subscription(identifier: .ideogram, name: "Ideogram", group: .ai),
            Subscription(identifier: .jasper, name: "Jasper", group: .ai),
            Subscription(identifier: .leonardoAI, name: "Leonardo AI", group: .ai),
            Subscription(identifier: .microsoftCopilotPro, name: "Microsoft Copilot Pro", group: .ai),
            Subscription(identifier: .midjourney, name: "Midjourney", group: .ai),
            Subscription(identifier: .perplexityPro, name: "Perplexity Pro", group: .ai),
            Subscription(identifier: .poe, name: "Poe", group: .ai),
            Subscription(identifier: .runway, name: "Runway", group: .ai),
            Subscription(identifier: .sunoPro, name: "Suno Pro", group: .ai),
            Subscription(identifier: .superhuman, name: "Superhuman", group: .ai),
            Subscription(identifier: .synthesia, name: "Synthesia", group: .ai),

            Subscription(identifier: .appleArcade, name: "Apple Arcade", group: .appleServices),
            Subscription(identifier: .appleDeveloperProgram, name: "Apple Developer Program", group: .appleServices),
            Subscription(identifier: .appleFitnessPlus, name: "Apple Fitness+", group: .appleServices),
            Subscription(identifier: .appleMusic, name: "Apple Music", group: .appleServices),
            Subscription(identifier: .appleNewsPlus, name: "Apple News+", group: .appleServices),
            Subscription(identifier: .appleOne, name: "Apple One", group: .appleServices),
            Subscription(identifier: .appleTVPlus, name: "Apple TV+", group: .appleServices),
            Subscription(identifier: .appleCare, name: "AppleCare+", group: .appleServices),
            Subscription(identifier: .iCloudPlus, name: "iCloud+", group: .appleServices),
            Subscription(identifier: .iTunesMatch, name: "iTunes Match", group: .appleServices),

            Subscription(identifier: .audible, name: "Audible", group: .audio),

            Subscription(identifier: .linkedInPremium, name: "LinkedIn Premium", group: .career),

            Subscription(identifier: .box, name: "Box", group: .cloud),
            Subscription(identifier: .dropbox, name: "Dropbox", group: .cloud),
            Subscription(identifier: .googleOne, name: "Google One", group: .cloud),
            Subscription(identifier: .mega, name: "MEGA", group: .cloud),
            Subscription(identifier: .oneDrive, name: "OneDrive", group: .cloud),
            Subscription(identifier: .pCloud, name: "pCloud", group: .cloud),
            Subscription(identifier: .protonDrive, name: "Proton Drive", group: .cloud),

            Subscription(identifier: .discordNitro, name: "Discord Nitro", group: .communication),
            Subscription(identifier: .slackPro, name: "Slack Pro", group: .communication),
            Subscription(identifier: .telegramPremium, name: "Telegram Premium", group: .communication),
            Subscription(identifier: .zoomPro, name: "Zoom Pro", group: .communication),

            Subscription(identifier: .patreon, name: "Patreon", group: .creator),

            Subscription(identifier: .woltPlus, name: "Wolt+", group: .delivery),

            Subscription(identifier: .adobeCreativeCloud, name: "Adobe Creative Cloud", group: .design),
            Subscription(identifier: .canvaPro, name: "Canva Pro", group: .design),
            Subscription(identifier: .figma, name: "Figma", group: .design),

            Subscription(identifier: .digitalOcean, name: "DigitalOcean", group: .developerTools),
            Subscription(identifier: .gitHubCopilot, name: "GitHub Copilot", group: .developerTools),
            Subscription(identifier: .gitLabPremium, name: "GitLab Premium", group: .developerTools),
            Subscription(identifier: .heroku, name: "Heroku", group: .developerTools),
            Subscription(identifier: .jetBrainsAllProducts, name: "JetBrains All Products", group: .developerTools),
            Subscription(identifier: .linear, name: "Linear", group: .developerTools),
            Subscription(identifier: .mongoDBAtlas, name: "MongoDB Atlas", group: .developerTools),
            Subscription(identifier: .replitCore, name: "Replit Core", group: .developerTools),
            Subscription(identifier: .vercelPro, name: "Vercel Pro", group: .developerTools),

            Subscription(identifier: .babbel, name: "Babbel", group: .education),
            Subscription(identifier: .brilliant, name: "Brilliant", group: .education),
            Subscription(identifier: .codecademyPro, name: "Codecademy Pro", group: .education),
            Subscription(identifier: .courseraPlus, name: "Coursera Plus", group: .education),
            Subscription(identifier: .duolingoSuper, name: "Duolingo Super", group: .education),
            Subscription(identifier: .masterClass, name: "MasterClass", group: .education),
            Subscription(identifier: .skillshare, name: "Skillshare", group: .education),

            Subscription(identifier: .revolutPremium, name: "Revolut Premium", group: .finance),
            Subscription(identifier: .tradingViewEssential, name: "TradingView Essential", group: .finance),
            Subscription(identifier: .ynab, name: "YNAB", group: .finance),

            Subscription(identifier: .fitbod, name: "Fitbod", group: .fitness),
            Subscription(identifier: .myFitnessPalPremium, name: "MyFitnessPal Premium", group: .fitness),
            Subscription(identifier: .peloton, name: "Peloton", group: .fitness),
            Subscription(identifier: .strava, name: "Strava", group: .fitness),

            Subscription(identifier: .eaPlay, name: "EA Play", group: .gaming),
            Subscription(identifier: .nintendoSwitchOnline, name: "Nintendo Switch Online", group: .gaming),
            Subscription(identifier: .playStationPlus, name: "PlayStation Plus", group: .gaming),
            Subscription(identifier: .ubisoftPlus, name: "Ubisoft+", group: .gaming),
            Subscription(identifier: .xboxGamePass, name: "Xbox Game Pass", group: .gaming),

            Subscription(identifier: .boltPlus, name: "Bolt Plus", group: .mobility),
            Subscription(identifier: .uberOne, name: "Uber One", group: .mobility),

            Subscription(identifier: .deezer, name: "Deezer", group: .music),
            Subscription(identifier: .soundCloudGoPlus, name: "SoundCloud Go+", group: .music),
            Subscription(identifier: .spotify, name: "Spotify", group: .music),
            Subscription(identifier: .tidal, name: "TIDAL", group: .music),
            Subscription(identifier: .youTubeMusic, name: "YouTube Music", group: .music),

            Subscription(identifier: .substack, name: "Substack", group: .news),
            Subscription(identifier: .theAthletic, name: "The Athletic", group: .news),
            Subscription(identifier: .theNewYorkTimes, name: "The New York Times", group: .news),
            Subscription(identifier: .theWallStreetJournal, name: "The Wall Street Journal", group: .news),

            Subscription(identifier: .evernote, name: "Evernote", group: .productivity),
            Subscription(identifier: .microsoft365, name: "Microsoft 365", group: .productivity),
            Subscription(identifier: .notion, name: "Notion", group: .productivity),
            Subscription(identifier: .obsidianSync, name: "Obsidian Sync", group: .productivity),
            Subscription(identifier: .raycastPro, name: "Raycast Pro", group: .productivity),
            Subscription(identifier: .readwise, name: "Readwise", group: .productivity),
            Subscription(identifier: .todoist, name: "Todoist", group: .productivity),

            Subscription(identifier: .kindleUnlimited, name: "Kindle Unlimited", group: .reading),

            Subscription(identifier: .onePassword, name: "1Password", group: .security),
            Subscription(identifier: .bitwardenPremium, name: "Bitwarden Premium", group: .security),
            Subscription(identifier: .dashlane, name: "Dashlane", group: .security),
            Subscription(identifier: .expressVPN, name: "ExpressVPN", group: .security),
            Subscription(identifier: .nordVPN, name: "NordVPN", group: .security),
            Subscription(identifier: .protonMailPlus, name: "Proton Mail Plus", group: .security),
            Subscription(identifier: .protonPass, name: "Proton Pass", group: .security),
            Subscription(identifier: .surfshark, name: "Surfshark", group: .security),

            Subscription(identifier: .amazonPrime, name: "Amazon Prime", group: .shopping),

            Subscription(identifier: .xPremium, name: "X Premium", group: .social),

            Subscription(identifier: .crunchyroll, name: "Crunchyroll", group: .streaming),
            Subscription(identifier: .disneyPlus, name: "Disney+", group: .streaming),
            Subscription(identifier: .hboMax, name: "HBO Max", group: .streaming),
            Subscription(identifier: .hulu, name: "Hulu", group: .streaming),
            Subscription(identifier: .mubi, name: "MUBI", group: .streaming),
            Subscription(identifier: .netflix, name: "Netflix", group: .streaming),
            Subscription(identifier: .paramountPlus, name: "Paramount+", group: .streaming),
            Subscription(identifier: .primeVideo, name: "Prime Video", group: .streaming),
            Subscription(identifier: .twitchTurbo, name: "Twitch Turbo", group: .streaming),

            Subscription(identifier: .setapp, name: "Setapp", group: .utilities),

            Subscription(identifier: .youTubePremium, name: "YouTube Premium", group: .video),

            Subscription(identifier: .calm, name: "Calm", group: .wellness),
            Subscription(identifier: .headspace, name: "Headspace", group: .wellness),
            Subscription(identifier: .noom, name: "Noom", group: .wellness),

            Subscription(identifier: .grammarly, name: "Grammarly", group: .writing),
            Subscription(identifier: .mediumMember, name: "Medium Member", group: .writing),
        ]
    }

    func fetchGroupedSubscriptions() -> [SubscriptionSection] {
        let grouped = Dictionary(grouping: fetchAvailableSubscriptions(), by: \.group)
        return SubscriptionGroup.allCases.compactMap { group in
            guard let subscriptions = grouped[group] else { return nil }
            return SubscriptionSection(group: group, subscriptions: subscriptions)
        }
    }
}
