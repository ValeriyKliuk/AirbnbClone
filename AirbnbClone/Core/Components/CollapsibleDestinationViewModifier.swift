//
//  CollapsibleDestinationViewModifier.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-11.
//

import SwiftUI

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

#Preview {
    Text("Hello, world!")
        .modifier(CollapsibleDestinationViewModifier())
}
