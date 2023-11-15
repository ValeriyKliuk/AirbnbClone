//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
//            image
            ListingImageCarouselView(listing: listing)
                .frame(height: 320.0)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            
//            listing details
            HStack(alignment: .top){
//                Details
                VStack (alignment: .leading, content: {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 2, content: {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    })
                    .foregroundColor(.black)
                })
                
                Spacer()

                RatingView(rating: listing.rate)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}

