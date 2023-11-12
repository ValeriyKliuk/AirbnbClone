//
//  PlaceOnMapView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI
import MapKit

struct PlaceOnMapView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16, content: {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        })

    }
}

#Preview {
    PlaceOnMapView()
}
