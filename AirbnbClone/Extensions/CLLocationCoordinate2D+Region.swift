//
//  CLLocationCoordinate2D+Region.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import CoreLocation

extension CLLocationCoordinate2D {
    static var losAngeles = CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
    static var miami = CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959)
    
    func region(for city: String) -> CLLocationCoordinate2D {
        switch city {
        case "Miami":
            return .miami
            
        default:
            return .losAngeles
        }
    }
}
