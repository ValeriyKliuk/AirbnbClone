//
//  HostView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct HostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Miami Villa")
                .font(.title)
                .fontWeight(.semibold)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        RatingView()
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Text("Miami, Florida")
                    
                }
                .font(.caption)
                .foregroundColor(.black)
                Spacer()
            }
        }
    }
}

#Preview {
    HostView()
}
