//
//  HostView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct HostView: View {
    let listing: Listing
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(listing.title)
                .font(.title)
                .fontWeight(.semibold)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        RatingView(rating: listing.rate)
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Text("\(listing.city), \(listing.state)")
                    
                }
                .font(.caption)
                .foregroundColor(.black)
                Spacer()
            }
        }
    }
}

#Preview {
    HostView(listing: DeveloperPreview.shared.listings[0])
}
