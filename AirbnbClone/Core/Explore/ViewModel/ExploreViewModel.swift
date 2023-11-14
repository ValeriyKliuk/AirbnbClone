//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
    }
    
    func fetchListings() async {
        do {
            self.listings =  try await service.fetchListings()
        } catch  {
            debugPrint("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
