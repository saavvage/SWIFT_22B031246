//
//  Goals.swift
//  AutoProfile
//
//  Created by Artemiy on 13.02.2025.
//
import SwiftUI

struct Goals: View{
    let Goals = [
        "Finish this app",
        "remember swift syntax",
        "Be successful in swift",
        "finish university"
    ]

    var body: some View {
        VStack {
            Text("My Goals")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            List(Goals, id: \.self) {goal in
                Text(goal)
                    .padding()
            }
        }
        .navigationTitle("Goals")
}
}
