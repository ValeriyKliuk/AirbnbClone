//
//  ReservationView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI


struct ReservationView: View {
    let pricePerNight: Double

    var body: some View {
        VStack {
            Divider()
                .padding(.bottom)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(String(format: "$%.02f", pricePerNight))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Total before taxes")
                        .font(.footnote)
                    
                    Text("Oct 15 - 20")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Reserve")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
            }
            .padding(.horizontal, 32)
        }
        .background(.white)
    }
}


#Preview {
    ReservationView(pricePerNight: 349.9999)
}
