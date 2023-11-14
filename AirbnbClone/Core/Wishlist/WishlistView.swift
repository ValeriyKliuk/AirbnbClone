//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32, content: {
                
                VStack(alignment: .leading, spacing: 4, content: {
                    VStack(alignment: .leading) {
                        Text("Log in to view your wishlist")
                            .font(.headline)
                        
                        Text("You can create, view or edit wishlists once you're logged in")
                            .lineLimit(2)
                            .font(.footnote)
                    }
                    .padding(.horizontal)
                    
   
                })
                
                
                PinkButtonView(action: {
                    print("Log in")
                }, title: "Log in")
                
                Spacer()
            })
            .padding()
            .navigationTitle("Wishlist")
        }
    }
}

#Preview {
    WishlistView()
}
