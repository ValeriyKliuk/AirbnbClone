//
//  PinkButtonView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import SwiftUI

struct PinkButtonView: View {
    let action: () -> Void
    let title: String
    
    
    var body: some View {
        Button{
            action()
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    PinkButtonView(action: {
        print("Hello")
    }, title: "Login")
}
