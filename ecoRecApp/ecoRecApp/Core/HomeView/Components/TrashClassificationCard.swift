//
//  TrashClassificationCard.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct TrashClassificationCard: View {
    
    let cardImage: Image
    let title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            cardImage
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 115)
                .clipShape(Rectangle())
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Classification")
                Text(title.capitalized)
            }
            .bold()
            .foregroundStyle(Color.primaryColors)
            .shadow(color: .green, radius: 10)
            .padding(.leading)
        }
        .overlay {
            Rectangle()
                .stroke(lineWidth: 0.5)
                .fill(Color.black)
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .frame(height: 115)
    }
}

#Preview {
    TrashClassificationCard(cardImage: .trashClassificationAnorganics, title: "Inorganic Waste")
}

