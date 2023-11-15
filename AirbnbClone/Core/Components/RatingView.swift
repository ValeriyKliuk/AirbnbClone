//
//  RatingView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct RatingView: View {
    let rating: Double
    
    var body: some View {
        HStack(spacing: 2, content: {
            Image(systemName: "star.fill")
            Text(String(format: "%.02f", rating))
        })
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView(rating: 4.567890123)
}
