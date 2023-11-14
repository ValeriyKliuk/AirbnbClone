//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import Foundation


class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
