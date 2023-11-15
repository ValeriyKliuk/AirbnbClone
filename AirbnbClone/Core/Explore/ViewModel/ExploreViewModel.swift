//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsOrigin = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsOrigin = listings
        } catch  {
            debugPrint("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation() {
        let filteredListings = listings.filter {
            $0.city.lowercased() == searchLocation.lowercased() || $0.state.lowercased() == searchLocation.lowercased()
        }
        
        self.listings = filteredListings.isEmpty ? listingsOrigin : filteredListings
    }
}
