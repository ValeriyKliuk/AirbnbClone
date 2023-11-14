//
//  ProfileLoginView.swift
//  AirbnbClone
//
//  Created by Valery on 2023-11-14.
//

import SwiftUI

struct ProfileLoginView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32, content: {
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Profile")
                    .font(.largeTitle)
                .fontWeight(.semibold)
                
                Text("Log in to start planning your next trip")

            })
            
            
            PinkButtonView(action: {
                print("log in")

            }, title: "Log in")
            
            HStack(content: {
                Text("Don't have account?")
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            })
            .font(.caption)
        })    }
}

#Preview {
    ProfileLoginView()
}
