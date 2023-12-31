//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerUiad: NSUUID().uuidString,
              ownerName: "John Smith",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 569.99,
              latitude: 25.7850,
              longitude: -80.1936,
              imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Miami Villa",
              rate: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa),
        .init(id: NSUUID().uuidString,
              ownerUiad: NSUUID().uuidString,
              ownerName: "Timothy Chalamet",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 569.99,
              latitude: 25.7706,
              longitude: -80.1340,
              imageUrls: ["listing-4", "listing-1", "listing-2", "listing-3"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Miami Beach House",
              rate: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .tv, .kitchen, .office],
              type: .house),
        .init(id: NSUUID().uuidString,
              ownerUiad: NSUUID().uuidString,
              ownerName: "Steve Johnson",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 764.99,
              latitude: 25.7650,
              longitude: -80.1936,
              imageUrls: ["listing-3", "listing-4", "listing-1", "listing-2"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Beautiful Miami apa",
              rate: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony],
              type: .apartment),
        .init(id: NSUUID().uuidString,
              ownerUiad: NSUUID().uuidString,
              ownerName: "Harry Styles",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 674.99,
              latitude: 34.055317473648,
              longitude: -118.23876752174418,
              imageUrls: ["listing-2", "listing-3", "listing-4", "listing-1"],
              address: "124 Main St",
              city: "Los Angeles",
              state: "California",
              title: "Beautiful Los Angeles home in Malibu",
              rate: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .pool],
              type: .house)
    ]
}
