//
//  RateAPI.swift
//  SubscriptionsKeeper
//
//  Created by Bohdan Pokhidnia on 01.05.2026.
//

protocol RateAPI {
    func fetchRate(baseCurrency: Currency) async throws(RateError) -> [Rate]
}
