//
//  ListingAmenitiesView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingAmenitiesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0 ..< 5) { feature in
                HStack(spacing: 8, content: {
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    Text("WiFi")
                    
                    Spacer()
                })
            }
        }
    }
}

#Preview {
    ListingAmenitiesView()
}
