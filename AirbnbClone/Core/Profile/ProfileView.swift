//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-12.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileLoginView()
            
            
            VStack(content: {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            })
            .padding(.vertical)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    ProfileView()
}
