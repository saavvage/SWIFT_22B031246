//
//  AnorganicHistoryCard.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct AnorganicHistoryCard: View {
    
    let anorganicData: AnorganicHistoryDataModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HStack {
                    Image.recycleLogo
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("Inorganic")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                
                Spacer()
                
                Text("complete".capitalized)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.green)
                    .frame(width: 80, height: 20)
                    .background(
                        Color.green.opacity(0.2)
                            .clipShape(Capsule())
                    )
            }
            .padding(.top, 10)
            .padding(.horizontal, 10)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Amount Converted = \(anorganicData.amount) Kg")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Money Earned = TNG\(anorganicData.result)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("It's been transferred to your account!")
                    .font(.subheadline)
                    .fontWeight(.thin)
                
                NavigationLink {
                    
                } label: {
                    Text("Switch Again")
                        .foregroundStyle(Color.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(height: 30)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 10)
                        .background(Color.green.clipShape(RoundedRectangle(cornerRadius: 10)))
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 10)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 0.5)
        }

    }
}

#Preview {
    AnorganicHistoryCard(anorganicData: AnorganicHistoryDataModel(amount: 5, result: 50000))
}

