//
//  PlaceOnMapView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI
import MapKit

struct PlaceOnMapView: View {
    let latitude: Double
    let longitude: Double
    @State private var cameraPosition: MapCameraPosition
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16, content: {
            Text("Where you'll be")
                .font(.headline)
            
            Map(position: $cameraPosition)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        })

    }
}

#Preview {
    PlaceOnMapView(latitude: 25.7850,
                   longitude: -80.1936)
}
