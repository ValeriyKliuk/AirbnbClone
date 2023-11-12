//
//  ListingFeaturesView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingFeaturesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0 ..< 2) { feature in
                HStack(spacing: 12) {
                    Image(systemName: "medal")
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListingFeaturesView()
}
