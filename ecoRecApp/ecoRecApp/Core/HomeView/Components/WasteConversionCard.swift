//
//  WasteConversionCard.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct WasteConversionCard: View {
    
    let imageCard: Image
    let trashInfo: String
    let price: Int
    
    var body: some View {
        ZStack(alignment: .top) {
            imageCard
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 220)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 0.5)
                        .fill(Color.black)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack {
                Text("Trash " + trashInfo.capitalized)
                    .fontWeight(.bold)
                    .shadow(color: .green.opacity(0.5), radius: 10)
                    .foregroundStyle(Color.primaryColors)
                
                Text("TNG")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.black)
                    .font(.subheadline) +
                Text("\(price)")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.black)
                    .font(.title) +
                Text("/kg")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.black)
                    .font(.subheadline)
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    WasteConversionCard(imageCard: Image.changeWasteCoverOrganics, trashInfo: "Organic", price: 10000)
}

