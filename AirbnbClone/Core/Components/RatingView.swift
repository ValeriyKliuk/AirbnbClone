//
//  RatingView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack(spacing: 2, content: {
            Image(systemName: "star.fill")
            Text("4.86")
        })
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView()
}
