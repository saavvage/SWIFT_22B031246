//
//  Hobbies.swift
//  AutoProfile
//
//  Created by Artemiy on 13.02.2025.
//


import SwiftUI

struct Hobbies: View {
    let hobbies = [
        ("✈️ Aviation", "I started to explore about aviation from childhood"),
        ("🏊‍♂️ Swimming", "I spent about 14 years for swimming"),
        ("🚗 Cars", " I started to be addicted to cars"),
        ("🧠 Education", " I study at KBTU")
    ]
    
    var body: some View {
        List(hobbies, id: \.0){ hobby in
            HStack {
                Text(hobby.0)
                    .font(.largeTitle)
                VStack(alignment: .leading){
                    Text(hobby.1)
                        .font(.body)
                        .foregroundColor(.gray)
                }
                    
                }
                .padding()
            }
            .navigationTitle("Hobbies")
    }
}
