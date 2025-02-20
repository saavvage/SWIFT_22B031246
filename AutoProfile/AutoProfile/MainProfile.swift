//
//  MainProfile.swift
//  AutoProfile
//
//  Created by Artemiy on 13.02.2025.
//

import SwiftUI

struct MainProfile: View {
    var body: some View {
        VStack {
            Image("profile picture")
                .resizable()
                .scaledToFit()
                .frame(width:150,height:150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth:3))
                .shadow(radius: 5)
            Text("Grents Artemiy")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Age: 20  | Location: Almaty")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Student of KBTU. Enjoying SWIFT")
                .padding()
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
