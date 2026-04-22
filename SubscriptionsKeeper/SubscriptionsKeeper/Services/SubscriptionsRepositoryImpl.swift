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
            Subscription(identifier: .chatGPTPlus, group: .ai, name: "ChatGPT Plus", cost: 20.00, currency: .usd),
            Subscription(identifier: .claudePro, group: .ai, name: "Claude Pro", cost: 20.00, currency: .usd),
            Subscription(identifier: .cursorPro, group: .ai, name: "Cursor Pro", cost: 20.00, currency: .usd),
            Subscription(identifier: .elevenLabs, group: .ai, name: "ElevenLabs", cost: 5.00, currency: .usd),
            Subscription(identifier: .geminiAdvanced, group: .ai, name: "Gemini Advanced", cost: 19.99, currency: .usd),
            Subscription(identifier: .ideogram, group: .ai, name: "Ideogram", cost: 8.00, currency: .usd),
            Subscription(identifier: .jasper, group: .ai, name: "Jasper", cost: 39.00, currency: .usd),
            Subscription(identifier: .leonardoAI, group: .ai, name: "Leonardo AI", cost: 10.00, currency: .usd),
            Subscription(identifier: .microsoftCopilotPro, group: .ai, name: "Microsoft Copilot Pro", cost: 20.00, currency: .usd),
            Subscription(identifier: .midjourney, group: .ai, name: "Midjourney", cost: 10.00, currency: .usd),
            Subscription(identifier: .perplexityPro, group: .ai, name: "Perplexity Pro", cost: 20.00, currency: .usd),
            Subscription(identifier: .poe, group: .ai, name: "Poe", cost: 19.99, currency: .usd),
            Subscription(identifier: .runway, group: .ai, name: "Runway", cost: 12.00, currency: .usd),
            Subscription(identifier: .sunoPro, group: .ai, name: "Suno Pro", cost: 8.00, currency: .usd),
            Subscription(identifier: .superhuman, group: .ai, name: "Superhuman", cost: 30.00, currency: .usd),
            Subscription(identifier: .synthesia, group: .ai, name: "Synthesia", cost: 22.00, currency: .usd),

            Subscription(identifier: .appleArcade, group: .appleServices, name: "Apple Arcade", cost: 6.99, currency: .usd),
            Subscription(identifier: .appleDeveloperProgram, group: .appleServices, name: "Apple Developer Program", cost: 99.00, currency: .usd, paymentCycle: .yearly),
            Subscription(identifier: .appleFitnessPlus, group: .appleServices, name: "Apple Fitness+", cost: 9.99, currency: .usd),
            Subscription(identifier: .appleMusic, group: .appleServices, name: "Apple Music", cost: 10.99, currency: .usd),
            Subscription(identifier: .appleNewsPlus, group: .appleServices, name: "Apple News+", cost: 12.99, currency: .usd),
            Subscription(identifier: .appleOne, group: .appleServices, name: "Apple One", cost: 19.95, currency: .usd),
            Subscription(identifier: .appleTVPlus, group: .appleServices, name: "Apple TV+", cost: 9.99, currency: .usd),
            Subscription(identifier: .appleCare, group: .appleServices, name: "AppleCare+", cost: 9.99, currency: .usd),
            Subscription(identifier: .iCloudPlus, group: .appleServices, name: "iCloud+", cost: 0.99, currency: .usd),
            Subscription(identifier: .iTunesMatch, group: .appleServices, name: "iTunes Match", cost: 24.99, currency: .usd, paymentCycle: .yearly),

            Subscription(identifier: .audible, group: .audio, name: "Audible", cost: 14.95, currency: .usd),

            Subscription(identifier: .linkedInPremium, group: .career, name: "LinkedIn Premium", cost: 39.99, currency: .usd),

            Subscription(identifier: .box, group: .cloud, name: "Box", cost: 10.00, currency: .usd),
            Subscription(identifier: .dropbox, group: .cloud, name: "Dropbox", cost: 9.99, currency: .usd),
            Subscription(identifier: .googleOne, group: .cloud, name: "Google One", cost: 1.99, currency: .usd),
            Subscription(identifier: .mega, group: .cloud, name: "MEGA", cost: 4.99, currency: .usd),
            Subscription(identifier: .oneDrive, group: .cloud, name: "OneDrive", cost: 1.99, currency: .usd),
            Subscription(identifier: .pCloud, group: .cloud, name: "pCloud", cost: 3.99, currency: .usd),
            Subscription(identifier: .protonDrive, group: .cloud, name: "Proton Drive", cost: 3.99, currency: .usd),

            Subscription(identifier: .discordNitro, group: .communication, name: "Discord Nitro", cost: 9.99, currency: .usd),
            Subscription(identifier: .slackPro, group: .communication, name: "Slack Pro", cost: 7.25, currency: .usd),
            Subscription(identifier: .telegramPremium, group: .communication, name: "Telegram Premium", cost: 4.99, currency: .usd),
            Subscription(identifier: .zoomPro, group: .communication, name: "Zoom Pro", cost: 13.33, currency: .usd),

            Subscription(identifier: .patreon, group: .creator, name: "Patreon", cost: 5.00, currency: .usd),

            Subscription(identifier: .woltPlus, group: .delivery, name: "Wolt+", cost: 9.99, currency: .usd),

            Subscription(identifier: .adobeCreativeCloud, group: .design, name: "Adobe Creative Cloud", cost: 54.99, currency: .usd),
            Subscription(identifier: .canvaPro, group: .design, name: "Canva Pro", cost: 12.99, currency: .usd),
            Subscription(identifier: .figma, group: .design, name: "Figma", cost: 12.00, currency: .usd),

            Subscription(identifier: .digitalOcean, group: .developerTools, name: "DigitalOcean", cost: 6.00, currency: .usd),
            Subscription(identifier: .gitHubCopilot, group: .developerTools, name: "GitHub Copilot", cost: 10.00, currency: .usd),
            Subscription(identifier: .gitLabPremium, group: .developerTools, name: "GitLab Premium", cost: 19.00, currency: .usd),
            Subscription(identifier: .heroku, group: .developerTools, name: "Heroku", cost: 5.00, currency: .usd),
            Subscription(identifier: .jetBrainsAllProducts, group: .developerTools, name: "JetBrains All Products", cost: 24.90, currency: .usd),
            Subscription(identifier: .linear, group: .developerTools, name: "Linear", cost: 8.00, currency: .usd),
            Subscription(identifier: .mongoDBAtlas, group: .developerTools, name: "MongoDB Atlas", cost: 9.00, currency: .usd),
            Subscription(identifier: .replitCore, group: .developerTools, name: "Replit Core", cost: 15.00, currency: .usd),
            Subscription(identifier: .vercelPro, group: .developerTools, name: "Vercel Pro", cost: 20.00, currency: .usd),

            Subscription(identifier: .babbel, group: .education, name: "Babbel", cost: 6.95, currency: .usd),
            Subscription(identifier: .brilliant, group: .education, name: "Brilliant", cost: 24.99, currency: .usd),
            Subscription(identifier: .codecademyPro, group: .education, name: "Codecademy Pro", cost: 17.49, currency: .usd),
            Subscription(identifier: .courseraPlus, group: .education, name: "Coursera Plus", cost: 59.00, currency: .usd),
            Subscription(identifier: .duolingoSuper, group: .education, name: "Duolingo Super", cost: 6.99, currency: .usd),
            Subscription(identifier: .masterClass, group: .education, name: "MasterClass", cost: 10.00, currency: .usd),
            Subscription(identifier: .skillshare, group: .education, name: "Skillshare", cost: 9.99, currency: .usd),

            Subscription(identifier: .revolutPremium, group: .finance, name: "Revolut Premium", cost: 9.99, currency: .usd),
            Subscription(identifier: .tradingViewEssential, group: .finance, name: "TradingView Essential", cost: 14.95, currency: .usd),
            Subscription(identifier: .ynab, group: .finance, name: "YNAB", cost: 14.99, currency: .usd),

            Subscription(identifier: .fitbod, group: .fitness, name: "Fitbod", cost: 12.99, currency: .usd),
            Subscription(identifier: .myFitnessPalPremium, group: .fitness, name: "MyFitnessPal Premium", cost: 9.99, currency: .usd),
            Subscription(identifier: .peloton, group: .fitness, name: "Peloton", cost: 12.99, currency: .usd),
            Subscription(identifier: .strava, group: .fitness, name: "Strava", cost: 11.99, currency: .usd),

            Subscription(identifier: .eaPlay, group: .gaming, name: "EA Play", cost: 4.99, currency: .usd),
            Subscription(identifier: .nintendoSwitchOnline, group: .gaming, name: "Nintendo Switch Online", cost: 3.99, currency: .usd),
            Subscription(identifier: .playStationPlus, group: .gaming, name: "PlayStation Plus", cost: 9.99, currency: .usd),
            Subscription(identifier: .ubisoftPlus, group: .gaming, name: "Ubisoft+", cost: 17.99, currency: .usd),
            Subscription(identifier: .xboxGamePass, group: .gaming, name: "Xbox Game Pass", cost: 14.99, currency: .usd),

            Subscription(identifier: .boltPlus, group: .mobility, name: "Bolt Plus", cost: 9.99, currency: .usd),
            Subscription(identifier: .uberOne, group: .mobility, name: "Uber One", cost: 9.99, currency: .usd),

            Subscription(identifier: .deezer, group: .music, name: "Deezer", cost: 10.99, currency: .usd),
            Subscription(identifier: .soundCloudGoPlus, group: .music, name: "SoundCloud Go+", cost: 9.99, currency: .usd),
            Subscription(identifier: .spotify, group: .music, name: "Spotify", cost: 10.99, currency: .usd),
            Subscription(identifier: .tidal, group: .music, name: "TIDAL", cost: 10.99, currency: .usd),
            Subscription(identifier: .youTubeMusic, group: .music, name: "YouTube Music", cost: 10.99, currency: .usd),

            Subscription(identifier: .substack, group: .news, name: "Substack", cost: 5.00, currency: .usd),
            Subscription(identifier: .theAthletic, group: .news, name: "The Athletic", cost: 7.99, currency: .usd),
            Subscription(identifier: .theNewYorkTimes, group: .news, name: "The New York Times", cost: 4.00, currency: .usd),
            Subscription(identifier: .theWallStreetJournal, group: .news, name: "The Wall Street Journal", cost: 9.99, currency: .usd),

            Subscription(identifier: .evernote, group: .productivity, name: "Evernote", cost: 14.99, currency: .usd),
            Subscription(identifier: .microsoft365, group: .productivity, name: "Microsoft 365", cost: 6.99, currency: .usd),
            Subscription(identifier: .notion, group: .productivity, name: "Notion", cost: 8.00, currency: .usd),
            Subscription(identifier: .obsidianSync, group: .productivity, name: "Obsidian Sync", cost: 4.00, currency: .usd),
            Subscription(identifier: .raycastPro, group: .productivity, name: "Raycast Pro", cost: 8.00, currency: .usd),
            Subscription(identifier: .readwise, group: .productivity, name: "Readwise", cost: 7.99, currency: .usd),
            Subscription(identifier: .todoist, group: .productivity, name: "Todoist", cost: 4.00, currency: .usd),

            Subscription(identifier: .kindleUnlimited, group: .reading, name: "Kindle Unlimited", cost: 11.99, currency: .usd),

            Subscription(identifier: .onePassword, group: .security, name: "1Password", cost: 2.99, currency: .usd),
            Subscription(identifier: .bitwardenPremium, group: .security, name: "Bitwarden Premium", cost: 10.00, currency: .usd, paymentCycle: .yearly),
            Subscription(identifier: .dashlane, group: .security, name: "Dashlane", cost: 4.99, currency: .usd),
            Subscription(identifier: .expressVPN, group: .security, name: "ExpressVPN", cost: 8.32, currency: .usd),
            Subscription(identifier: .nordVPN, group: .security, name: "NordVPN", cost: 3.79, currency: .usd),
            Subscription(identifier: .protonMailPlus, group: .security, name: "Proton Mail Plus", cost: 3.99, currency: .usd),
            Subscription(identifier: .protonPass, group: .security, name: "Proton Pass", cost: 1.99, currency: .usd),
            Subscription(identifier: .surfshark, group: .security, name: "Surfshark", cost: 2.49, currency: .usd),

            Subscription(identifier: .amazonPrime, group: .shopping, name: "Amazon Prime", cost: 14.99, currency: .usd),

            Subscription(identifier: .xPremium, group: .social, name: "X Premium", cost: 8.00, currency: .usd),

            Subscription(identifier: .crunchyroll, group: .streaming, name: "Crunchyroll", cost: 7.99, currency: .usd),
            Subscription(identifier: .disneyPlus, group: .streaming, name: "Disney+", cost: 7.99, currency: .usd),
            Subscription(identifier: .hboMax, group: .streaming, name: "HBO Max", cost: 9.99, currency: .usd),
            Subscription(identifier: .hulu, group: .streaming, name: "Hulu", cost: 7.99, currency: .usd),
            Subscription(identifier: .mubi, group: .streaming, name: "MUBI", cost: 12.99, currency: .usd),
            Subscription(identifier: .netflix, group: .streaming, name: "Netflix", cost: 15.49, currency: .usd),
            Subscription(identifier: .paramountPlus, group: .streaming, name: "Paramount+", cost: 5.99, currency: .usd),
            Subscription(identifier: .primeVideo, group: .streaming, name: "Prime Video", cost: 8.99, currency: .usd),
            Subscription(identifier: .twitchTurbo, group: .streaming, name: "Twitch Turbo", cost: 8.99, currency: .usd),

            Subscription(identifier: .setapp, group: .utilities, name: "Setapp", cost: 9.99, currency: .usd),

            Subscription(identifier: .youTubePremium, group: .video, name: "YouTube Premium", cost: 13.99, currency: .usd),

            Subscription(identifier: .calm, group: .wellness, name: "Calm", cost: 14.99, currency: .usd),
            Subscription(identifier: .headspace, group: .wellness, name: "Headspace", cost: 12.99, currency: .usd),
            Subscription(identifier: .noom, group: .wellness, name: "Noom", cost: 60.00, currency: .usd),

            Subscription(identifier: .grammarly, group: .writing, name: "Grammarly", cost: 12.00, currency: .usd),
            Subscription(identifier: .mediumMember, group: .writing, name: "Medium Member", cost: 5.00, currency: .usd),
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
