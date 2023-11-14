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
            
            Button{
                print("log in")
            } label: {
                Text("Log in")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 48)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
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
