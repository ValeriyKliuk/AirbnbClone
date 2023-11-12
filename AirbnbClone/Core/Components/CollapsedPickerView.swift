//
//  CollapsedPickerView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        })
    }
}

#Preview {
    CollapsedPickerView(title: "Title", description: "Description")
}
