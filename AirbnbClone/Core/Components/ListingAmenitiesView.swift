//
//  ListingAmenitiesView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingAmenitiesView: View {
    let amenities: [ListingAmenities]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(amenities) { amenity in
                HStack(spacing: 8, content: {
                    Image(systemName: amenity.imageName)
                        .frame(width: 32)
                    Text(amenity.title)
                    
                    Spacer()
                })
            }
        }
    }
}

#Preview {
    ListingAmenitiesView(amenities: DeveloperPreview.shared.listings[0].amenities)
}
