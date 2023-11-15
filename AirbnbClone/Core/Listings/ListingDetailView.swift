//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingDetailView: View {
    let listing: Listing
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320.0)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(.leading, 32.0)
                        .padding(.top, 60.0)

                }

            }
            
            HostView(listing: listing)
                .padding(.leading)
            
            Divider()
            
            HostInfoView(listing: listing)
                .padding()
            
            Divider()
            
            ListingFeaturesView(features: listing.features)
                .padding()
            
            Divider()
            
            BedroomsView(numberOfBedrooms: listing.numberOfBedrooms)
                .padding()
            
            Divider()
            
            ListingAmenitiesView(amenities: listing.amenities)
                 .padding()
            
            Divider()
            
            PlaceOnMapView()
                .padding()

        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom, content: {
            ReservationView()
        })
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
