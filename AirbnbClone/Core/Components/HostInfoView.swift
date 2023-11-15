//
//  HostInfoView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct HostInfoView: View {
    let listing: Listing
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("\(listing.numberOfGuests) guests -")
                    Text("\(listing.numberOfBedrooms) bedrooms -")
                    Text("\(listing.numberOfBeds) beds -")
                    Text("\(listing.numberOfBathrooms) baths")
                }
                .font(.caption)
            }
            .frame(width: 300, alignment: .leading)
            
            Spacer()
            
            Image(listing.ownerImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
    }
}

#Preview {
    HostInfoView(listing: DeveloperPreview.shared.listings[3])
}
