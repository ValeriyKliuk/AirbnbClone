//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
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
                        .padding(32)
                }

            }
            
            HostView()
                .padding(.leading)
            
            Divider()
            
            HostInfoView()
                .padding()
            
            Divider()
            
            ListingFeaturesView()
                .padding()
            
            Divider()
            
            BedroomsView()
                .padding()
            
            Divider()
            
             ListingAmenitiesView()
                 .padding()
            
            Divider()
            
            PlaceOnMapView()
                .padding()

        }
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom, content: {
            ReservationView()
        })
    }
}

#Preview {
    ListingDetailView()
}
