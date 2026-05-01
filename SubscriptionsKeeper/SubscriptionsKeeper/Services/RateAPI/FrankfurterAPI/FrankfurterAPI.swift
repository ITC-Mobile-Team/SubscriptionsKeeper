//
//  FrankfurterAPI.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 01.05.2026.
//

import Foundation

private struct FrankfurterResponse: Decodable {
    let rates: [String: Double]
}

final class FrankfurterAPI: RateAPI {
    func fetchRate(baseCurrency: Currency) async throws(RateError) -> [Rate] {
        guard let url = URL(string: "https://api.frankfurter.dev/v1/latest?base=\(baseCurrency.abbreviation)") else {
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
            let decoded = try JSONDecoder().decode(FrankfurterResponse.self, from: data)
            return decoded.rates.compactMap { (key, value) in
                guard let currency = Currency(rawValue: key.lowercased()) else { return nil }
                return Rate(baseCurrency: baseCurrency, currency: currency, amount: value)
            }
        } catch let error as DecodingError {
            throw .decodingError(error)
        } catch {
            throw .unknown(error)
        }
    }
}
