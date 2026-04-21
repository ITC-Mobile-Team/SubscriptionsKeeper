//
//  SubscriptionsRepositoryImpl.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 21.04.2026.
//

protocol SubscriptionsRepository {
    func fetchAvailableSubscriptions() -> [Subscription]
}

final class SubscriptionsRepositoryImpl: SubscriptionsRepository {
    func fetchAvailableSubscriptions() -> [Subscription] {
        [
            // AI
            Subscription(identifier: .chatGPTPlus, name: "ChatGPT Plus", imageUrlString: "https://logo.clearbit.com/openai.com"),
            Subscription(identifier: .claudePro, name: "Claude Pro", imageUrlString: "https://logo.clearbit.com/claude.ai"),
            Subscription(identifier: .cursorPro, name: "Cursor Pro", imageUrlString: "https://logo.clearbit.com/cursor.sh"),
            Subscription(identifier: .elevenLabs, name: "ElevenLabs", imageUrlString: "https://logo.clearbit.com/elevenlabs.io"),
            Subscription(identifier: .geminiAdvanced, name: "Gemini Advanced", imageUrlString: "https://logo.clearbit.com/gemini.google.com"),
            Subscription(identifier: .ideogram, name: "Ideogram", imageUrlString: "https://logo.clearbit.com/ideogram.ai"),
            Subscription(identifier: .jasper, name: "Jasper", imageUrlString: "https://logo.clearbit.com/jasper.ai"),
            Subscription(identifier: .leonardoAI, name: "Leonardo AI", imageUrlString: "https://logo.clearbit.com/leonardo.ai"),
            Subscription(identifier: .microsoftCopilotPro, name: "Microsoft Copilot Pro", imageUrlString: "https://logo.clearbit.com/microsoft.com"),
            Subscription(identifier: .midjourney, name: "Midjourney", imageUrlString: "https://logo.clearbit.com/midjourney.com"),
            Subscription(identifier: .perplexityPro, name: "Perplexity Pro", imageUrlString: "https://logo.clearbit.com/perplexity.ai"),
            Subscription(identifier: .poe, name: "Poe", imageUrlString: "https://logo.clearbit.com/poe.com"),
            Subscription(identifier: .runway, name: "Runway", imageUrlString: "https://logo.clearbit.com/runwayml.com"),
            Subscription(identifier: .sunoPro, name: "Suno Pro", imageUrlString: "https://logo.clearbit.com/suno.ai"),
            Subscription(identifier: .superhuman, name: "Superhuman", imageUrlString: "https://logo.clearbit.com/superhuman.com"),
            Subscription(identifier: .synthesia, name: "Synthesia", imageUrlString: "https://logo.clearbit.com/synthesia.io"),

            // Apple Services
            Subscription(identifier: .appleArcade, name: "Apple Arcade", imageUrlString: "https://logo.clearbit.com/apple.com"),
            Subscription(identifier: .appleDeveloperProgram, name: "Apple Developer Program", imageUrlString: "https://logo.clearbit.com/developer.apple.com"),
            Subscription(identifier: .appleFitnessPlus, name: "Apple Fitness+", imageUrlString: "https://logo.clearbit.com/apple.com"),
            Subscription(identifier: .appleMusic, name: "Apple Music", imageUrlString: "https://logo.clearbit.com/music.apple.com"),
            Subscription(identifier: .appleNewsPlus, name: "Apple News+", imageUrlString: "https://logo.clearbit.com/apple.com"),
            Subscription(identifier: .appleOne, name: "Apple One", imageUrlString: "https://logo.clearbit.com/apple.com"),
            Subscription(identifier: .appleTVPlus, name: "Apple TV+", imageUrlString: "https://logo.clearbit.com/tv.apple.com"),
            Subscription(identifier: .appleCare, name: "AppleCare+", imageUrlString: "https://logo.clearbit.com/apple.com"),
            Subscription(identifier: .iCloudPlus, name: "iCloud+", imageUrlString: "https://logo.clearbit.com/icloud.com"),
            Subscription(identifier: .iTunesMatch, name: "iTunes Match", imageUrlString: "https://logo.clearbit.com/apple.com"),

            // Audio
            Subscription(identifier: .audible, name: "Audible", imageUrlString: "https://logo.clearbit.com/audible.com"),

            // Career
            Subscription(identifier: .linkedInPremium, name: "LinkedIn Premium", imageUrlString: "https://logo.clearbit.com/linkedin.com"),

            // Cloud
            Subscription(identifier: .box, name: "Box", imageUrlString: "https://logo.clearbit.com/box.com"),
            Subscription(identifier: .dropbox, name: "Dropbox", imageUrlString: "https://logo.clearbit.com/dropbox.com"),
            Subscription(identifier: .googleOne, name: "Google One", imageUrlString: "https://logo.clearbit.com/one.google.com"),
            Subscription(identifier: .mega, name: "MEGA", imageUrlString: "https://logo.clearbit.com/mega.io"),
            Subscription(identifier: .oneDrive, name: "OneDrive", imageUrlString: "https://logo.clearbit.com/onedrive.live.com"),
            Subscription(identifier: .pCloud, name: "pCloud", imageUrlString: "https://logo.clearbit.com/pcloud.com"),
            Subscription(identifier: .protonDrive, name: "Proton Drive", imageUrlString: "https://logo.clearbit.com/proton.me"),

            // Communication
            Subscription(identifier: .discordNitro, name: "Discord Nitro", imageUrlString: "https://logo.clearbit.com/discord.com"),
            Subscription(identifier: .slackPro, name: "Slack Pro", imageUrlString: "https://logo.clearbit.com/slack.com"),
            Subscription(identifier: .telegramPremium, name: "Telegram Premium", imageUrlString: "https://logo.clearbit.com/telegram.org"),
            Subscription(identifier: .zoomPro, name: "Zoom Pro", imageUrlString: "https://logo.clearbit.com/zoom.us"),

            // Creator
            Subscription(identifier: .patreon, name: "Patreon", imageUrlString: "https://logo.clearbit.com/patreon.com"),

            // Delivery
            Subscription(identifier: .woltPlus, name: "Wolt+", imageUrlString: "https://logo.clearbit.com/wolt.com"),

            // Design
            Subscription(identifier: .adobeCreativeCloud, name: "Adobe Creative Cloud", imageUrlString: "https://logo.clearbit.com/adobe.com"),
            Subscription(identifier: .canvaPro, name: "Canva Pro", imageUrlString: "https://logo.clearbit.com/canva.com"),
            Subscription(identifier: .figma, name: "Figma", imageUrlString: "https://logo.clearbit.com/figma.com"),

            // Developer Tools
            Subscription(identifier: .digitalOcean, name: "DigitalOcean", imageUrlString: "https://logo.clearbit.com/digitalocean.com"),
            Subscription(identifier: .gitHubCopilot, name: "GitHub Copilot", imageUrlString: "https://logo.clearbit.com/github.com"),
            Subscription(identifier: .gitLabPremium, name: "GitLab Premium", imageUrlString: "https://logo.clearbit.com/gitlab.com"),
            Subscription(identifier: .heroku, name: "Heroku", imageUrlString: "https://logo.clearbit.com/heroku.com"),
            Subscription(identifier: .jetBrainsAllProducts, name: "JetBrains All Products", imageUrlString: "https://logo.clearbit.com/jetbrains.com"),
            Subscription(identifier: .linear, name: "Linear", imageUrlString: "https://logo.clearbit.com/linear.app"),
            Subscription(identifier: .mongoDBAtlas, name: "MongoDB Atlas", imageUrlString: "https://logo.clearbit.com/mongodb.com"),
            Subscription(identifier: .replitCore, name: "Replit Core", imageUrlString: "https://logo.clearbit.com/replit.com"),
            Subscription(identifier: .vercelPro, name: "Vercel Pro", imageUrlString: "https://logo.clearbit.com/vercel.com"),

            // Education
            Subscription(identifier: .babbel, name: "Babbel", imageUrlString: "https://logo.clearbit.com/babbel.com"),
            Subscription(identifier: .brilliant, name: "Brilliant", imageUrlString: "https://logo.clearbit.com/brilliant.org"),
            Subscription(identifier: .codecademyPro, name: "Codecademy Pro", imageUrlString: "https://logo.clearbit.com/codecademy.com"),
            Subscription(identifier: .courseraPlus, name: "Coursera Plus", imageUrlString: "https://logo.clearbit.com/coursera.org"),
            Subscription(identifier: .duolingoSuper, name: "Duolingo Super", imageUrlString: "https://logo.clearbit.com/duolingo.com"),
            Subscription(identifier: .masterClass, name: "MasterClass", imageUrlString: "https://logo.clearbit.com/masterclass.com"),
            Subscription(identifier: .skillshare, name: "Skillshare", imageUrlString: "https://logo.clearbit.com/skillshare.com"),

            // Finance
            Subscription(identifier: .revolutPremium, name: "Revolut Premium", imageUrlString: "https://logo.clearbit.com/revolut.com"),
            Subscription(identifier: .tradingViewEssential, name: "TradingView Essential", imageUrlString: "https://logo.clearbit.com/tradingview.com"),
            Subscription(identifier: .ynab, name: "YNAB", imageUrlString: "https://logo.clearbit.com/ynab.com"),

            // Fitness
            Subscription(identifier: .fitbod, name: "Fitbod", imageUrlString: "https://logo.clearbit.com/fitbod.me"),
            Subscription(identifier: .myFitnessPalPremium, name: "MyFitnessPal Premium", imageUrlString: "https://logo.clearbit.com/myfitnesspal.com"),
            Subscription(identifier: .peloton, name: "Peloton", imageUrlString: "https://logo.clearbit.com/onepeloton.com"),
            Subscription(identifier: .strava, name: "Strava", imageUrlString: "https://logo.clearbit.com/strava.com"),

            // Gaming
            Subscription(identifier: .eaPlay, name: "EA Play", imageUrlString: "https://logo.clearbit.com/ea.com"),
            Subscription(identifier: .nintendoSwitchOnline, name: "Nintendo Switch Online", imageUrlString: "https://logo.clearbit.com/nintendo.com"),
            Subscription(identifier: .playStationPlus, name: "PlayStation Plus", imageUrlString: "https://logo.clearbit.com/playstation.com"),
            Subscription(identifier: .ubisoftPlus, name: "Ubisoft+", imageUrlString: "https://logo.clearbit.com/ubisoft.com"),
            Subscription(identifier: .xboxGamePass, name: "Xbox Game Pass", imageUrlString: "https://logo.clearbit.com/xbox.com"),

            // Mobility
            Subscription(identifier: .boltPlus, name: "Bolt Plus", imageUrlString: "https://logo.clearbit.com/bolt.eu"),
            Subscription(identifier: .uberOne, name: "Uber One", imageUrlString: "https://logo.clearbit.com/uber.com"),

            // Music
            Subscription(identifier: .deezer, name: "Deezer", imageUrlString: "https://logo.clearbit.com/deezer.com"),
            Subscription(identifier: .soundCloudGoPlus, name: "SoundCloud Go+", imageUrlString: "https://logo.clearbit.com/soundcloud.com"),
            Subscription(identifier: .spotify, name: "Spotify", imageUrlString: "https://logo.clearbit.com/spotify.com"),
            Subscription(identifier: .tidal, name: "TIDAL", imageUrlString: "https://logo.clearbit.com/tidal.com"),
            Subscription(identifier: .youTubeMusic, name: "YouTube Music", imageUrlString: "https://logo.clearbit.com/music.youtube.com"),

            // News
            Subscription(identifier: .substack, name: "Substack", imageUrlString: "https://logo.clearbit.com/substack.com"),
            Subscription(identifier: .theAthletic, name: "The Athletic", imageUrlString: "https://logo.clearbit.com/theathletic.com"),
            Subscription(identifier: .theNewYorkTimes, name: "The New York Times", imageUrlString: "https://logo.clearbit.com/nytimes.com"),
            Subscription(identifier: .theWallStreetJournal, name: "The Wall Street Journal", imageUrlString: "https://logo.clearbit.com/wsj.com"),

            // Productivity
            Subscription(identifier: .evernote, name: "Evernote", imageUrlString: "https://logo.clearbit.com/evernote.com"),
            Subscription(identifier: .microsoft365, name: "Microsoft 365", imageUrlString: "https://logo.clearbit.com/microsoft.com"),
            Subscription(identifier: .notion, name: "Notion", imageUrlString: "https://logo.clearbit.com/notion.so"),
            Subscription(identifier: .obsidianSync, name: "Obsidian Sync", imageUrlString: "https://logo.clearbit.com/obsidian.md"),
            Subscription(identifier: .raycastPro, name: "Raycast Pro", imageUrlString: "https://logo.clearbit.com/raycast.com"),
            Subscription(identifier: .readwise, name: "Readwise", imageUrlString: "https://logo.clearbit.com/readwise.io"),
            Subscription(identifier: .todoist, name: "Todoist", imageUrlString: "https://logo.clearbit.com/todoist.com"),

            // Reading
            Subscription(identifier: .kindleUnlimited, name: "Kindle Unlimited", imageUrlString: "https://logo.clearbit.com/amazon.com"),

            // Security
            Subscription(identifier: .onePassword, name: "1Password", imageUrlString: "https://logo.clearbit.com/1password.com"),
            Subscription(identifier: .bitwardenPremium, name: "Bitwarden Premium", imageUrlString: "https://logo.clearbit.com/bitwarden.com"),
            Subscription(identifier: .dashlane, name: "Dashlane", imageUrlString: "https://logo.clearbit.com/dashlane.com"),
            Subscription(identifier: .expressVPN, name: "ExpressVPN", imageUrlString: "https://logo.clearbit.com/expressvpn.com"),
            Subscription(identifier: .nordVPN, name: "NordVPN", imageUrlString: "https://logo.clearbit.com/nordvpn.com"),
            Subscription(identifier: .protonMailPlus, name: "Proton Mail Plus", imageUrlString: "https://logo.clearbit.com/proton.me"),
            Subscription(identifier: .protonPass, name: "Proton Pass", imageUrlString: "https://logo.clearbit.com/proton.me"),
            Subscription(identifier: .surfshark, name: "Surfshark", imageUrlString: "https://logo.clearbit.com/surfshark.com"),

            // Shopping
            Subscription(identifier: .amazonPrime, name: "Amazon Prime", imageUrlString: "https://logo.clearbit.com/amazon.com"),

            // Social
            Subscription(identifier: .xPremium, name: "X Premium", imageUrlString: "https://logo.clearbit.com/x.com"),

            // Streaming
            Subscription(identifier: .crunchyroll, name: "Crunchyroll", imageUrlString: "https://logo.clearbit.com/crunchyroll.com"),
            Subscription(identifier: .disneyPlus, name: "Disney+", imageUrlString: "https://logo.clearbit.com/disneyplus.com"),
            Subscription(identifier: .hboMax, name: "HBO Max", imageUrlString: "https://logo.clearbit.com/max.com"),
            Subscription(identifier: .hulu, name: "Hulu", imageUrlString: "https://logo.clearbit.com/hulu.com"),
            Subscription(identifier: .mubi, name: "MUBI", imageUrlString: "https://logo.clearbit.com/mubi.com"),
            Subscription(identifier: .netflix, name: "Netflix", imageUrlString: "https://logo.clearbit.com/netflix.com"),
            Subscription(identifier: .paramountPlus, name: "Paramount+", imageUrlString: "https://logo.clearbit.com/paramountplus.com"),
            Subscription(identifier: .primeVideo, name: "Prime Video", imageUrlString: "https://logo.clearbit.com/primevideo.com"),
            Subscription(identifier: .twitchTurbo, name: "Twitch Turbo", imageUrlString: "https://logo.clearbit.com/twitch.tv"),

            // Utilities
            Subscription(identifier: .setapp, name: "Setapp", imageUrlString: "https://logo.clearbit.com/setapp.com"),

            // Video
            Subscription(identifier: .youTubePremium, name: "YouTube Premium", imageUrlString: "https://logo.clearbit.com/youtube.com"),

            // Wellness
            Subscription(identifier: .calm, name: "Calm", imageUrlString: "https://logo.clearbit.com/calm.com"),
            Subscription(identifier: .headspace, name: "Headspace", imageUrlString: "https://logo.clearbit.com/headspace.com"),
            Subscription(identifier: .noom, name: "Noom", imageUrlString: "https://logo.clearbit.com/noom.com"),

            // Writing
            Subscription(identifier: .grammarly, name: "Grammarly", imageUrlString: "https://logo.clearbit.com/grammarly.com"),
            Subscription(identifier: .mediumMember, name: "Medium Member", imageUrlString: "https://logo.clearbit.com/medium.com"),
        ]
    }
}
