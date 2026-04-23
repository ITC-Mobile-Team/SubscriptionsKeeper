//
//  DatabaseService.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 23.04.2026.
//

import Foundation

protocol DatabaseService<DomainModel> {
    associatedtype DomainModel

    /// Fetch all saved records as domain models.
    func fetchAll() throws(DatabaseError) -> [DomainModel]

    /// Save a new record. Returns the created domain model.
    func create(from model: DomainModel, id: UUID) throws(DatabaseError)

    /// Update an existing record with a new domain model.
    func update(id: UUID, with model: DomainModel) throws(DatabaseError)

    /// Delete a record by its identifier.
    func delete(id: UUID) throws(DatabaseError)
}
