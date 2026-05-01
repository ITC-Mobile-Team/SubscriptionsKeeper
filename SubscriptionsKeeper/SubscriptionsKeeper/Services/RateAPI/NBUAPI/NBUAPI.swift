//
//  NBUAPI.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 01.05.2026.
//

import Foundation

private struct NBURateResponse: Decodable {
    let currencyCodeL: String
    let units: Int
    let amount: Double
    
    enum CodingKeys: String, CodingKey {
        case currencyCodeL = "CurrencyCodeL"
        case units = "Units"
        case amount = "Amount"
    }
}

final class NBUAPI: RateAPI {
    func fetchRate(baseCurrency: Currency) async throws(RateError) -> [Rate] {
        guard let url = URL(string: "https://bank.gov.ua/NBU_Exchange/exchange?json") else {
            throw .invalidURL
        }

        let data: Data
        let response: URLResponse

        do {
            (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        } catch let error as URLError {
            throw .networkError(error)
        } catch {
            throw .unknown(error)
        }

        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw .invalidResponse
        }

        do {
            let decoded = try JSONDecoder().decode([NBURateResponse].self, from: data)
            return decoded.compactMap { item in
                guard let currency = Currency(rawValue: item.currencyCodeL.lowercased()) else { return nil }
                let ratePerUnit = item.amount / Double(item.units)
                return Rate(baseCurrency: baseCurrency, currency: currency, amount: ratePerUnit)
            }
        } catch let error as DecodingError {
            throw .decodingError(error)
        } catch {
            throw .unknown(error)
        }
    }
}
