//
//  DatabaseError.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 23.04.2026.
//

import Foundation

enum DatabaseError: LocalizedError {
    case notFound(UUID)
    case fetchFailed(Error)
    case saveFailed(Error)
    case initializationFailed(Error)

    var errorDescription: String? {
        switch self {
        case let .notFound(id):
            "Record '\(id)' not found."

        case let .fetchFailed(error):
            "Failed to fetch records: \(error.localizedDescription)"

        case let .saveFailed(error):
            "Failed to save changes: \(error.localizedDescription)"

        case let .initializationFailed(error):
            "Failed to initialize database: \(error.localizedDescription)"
        }
    }
}
