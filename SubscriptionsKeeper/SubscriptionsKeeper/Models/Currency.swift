import Foundation

enum Currency: String, CaseIterable, Codable {
    case eur
    case usd
    case gbp
    case pln
    case aud
    case brl
    case cad
    case chf
    case cny
    case czk
    case dkk
    case hkd
    case huf
    case idr
    case ils
    case inr
    case isk
    case jpy
    case krw
    case mxn
    case myr
    case nok
    case nzd
    case php
    case ron
    case sek
    case sgd
    case thb
    case `try`
    case uah
    case zar

    var name: String {
        switch self {
        case .eur: "Euro"
        case .usd: "US Dollar"
        case .gbp: "British Pound"
        case .pln: "Polish Zloty"
        case .aud: "Australian Dollar"
        case .brl: "Brazilian Real"
        case .cad: "Canadian Dollar"
        case .chf: "Swiss Franc"
        case .cny: "Chinese Yuan"
        case .czk: "Czech Koruna"
        case .dkk: "Danish Krone"
        case .hkd: "Hong Kong Dollar"
        case .huf: "Hungarian Forint"
        case .idr: "Indonesian Rupiah"
        case .ils: "Israeli New Shekel"
        case .inr: "Indian Rupee"
        case .isk: "Icelandic Króna"
        case .jpy: "Japanese Yen"
        case .krw: "South Korean Won"
        case .mxn: "Mexican Peso"
        case .myr: "Malaysian Ringgit"
        case .nok: "Norwegian Krone"
        case .nzd: "New Zealand Dollar"
        case .php: "Philippine Peso"
        case .ron: "Romanian Leu"
        case .sek: "Swedish Krona"
        case .sgd: "Singapore Dollar"
        case .thb: "Thai Baht"
        case .try: "Turkish Lira"
        case .uah: "Ukrainian Hryvnia"
        case .zar: "South African Rand"
        }
    }

    var symbol: String {
        switch self {
        case .eur: "€"
        case .usd: "$"
        case .gbp: "£"
        case .pln: "zł"
        case .aud: "A$"
        case .brl: "R$"
        case .cad: "C$"
        case .chf: "CHF"
        case .cny: "¥"
        case .czk: "Kč"
        case .dkk: "kr"
        case .hkd: "HK$"
        case .huf: "Ft"
        case .idr: "Rp"
        case .ils: "₪"
        case .inr: "₹"
        case .isk: "kr"
        case .jpy: "¥"
        case .krw: "₩"
        case .mxn: "MX$"
        case .myr: "RM"
        case .nok: "kr"
        case .nzd: "NZ$"
        case .php: "₱"
        case .ron: "lei"
        case .sek: "kr"
        case .sgd: "S$"
        case .thb: "฿"
        case .try: "₺"
        case .uah: "₴"
        case .zar: "R"
        }
    }

    var abbreviation: String {
        switch self {
        case .eur: "EUR"
        case .usd: "USD"
        case .gbp: "GBP"
        case .pln: "PLN"
        case .aud: "AUD"
        case .brl: "BRL"
        case .cad: "CAD"
        case .chf: "CHF"
        case .cny: "CNY"
        case .czk: "CZK"
        case .dkk: "DKK"
        case .hkd: "HKD"
        case .huf: "HUF"
        case .idr: "IDR"
        case .ils: "ILS"
        case .inr: "INR"
        case .isk: "ISK"
        case .jpy: "JPY"
        case .krw: "KRW"
        case .mxn: "MXN"
        case .myr: "MYR"
        case .nok: "NOK"
        case .nzd: "NZD"
        case .php: "PHP"
        case .ron: "RON"
        case .sek: "SEK"
        case .sgd: "SGD"
        case .thb: "THB"
        case .try: "TRY"
        case .uah: "UAH"
        case .zar: "ZAR"
        }
    }
}
