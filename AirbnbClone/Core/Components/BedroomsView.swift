//
//  BedroomsView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct BedroomsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1 ..< 5) { bedroom in
                        VStack {
                            Image(systemName: "bed.double")
                            
                            Text("Bedroom \(bedroom)")
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    BedroomsView()
}
