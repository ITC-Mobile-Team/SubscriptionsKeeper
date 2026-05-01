//
//  RateError.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 01.05.2026.
//

import Foundation

enum RateError: LocalizedError {
    case invalidURL
    case networkError(URLError)
    case invalidResponse
    case decodingError(DecodingError)
    case unknown(any Error)
}
