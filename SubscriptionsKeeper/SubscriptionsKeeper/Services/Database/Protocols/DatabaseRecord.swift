//
//  DatabaseRecord.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 23.04.2026.
//

import SwiftData
import Foundation

/// A SwiftData model that knows how to map to/from a domain model.
protocol DatabaseRecord: PersistentModel {
    associatedtype DomainModel
    var id: UUID { get }
    
    init(from model: DomainModel, id: UUID)
    
    func toDomainModel() -> DomainModel?
    func update(from model: DomainModel)
}
