//
//  AnorganicHistoryView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct AnorganicHistoryView: View {
    
    @EnvironmentObject var VM: ecoRecAppViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            if !VM.anorganicHistoryData.isEmpty {
                ForEach(VM.anorganicHistoryData) { anorganicData in
                    AnorganicHistoryCard(anorganicData: anorganicData)
                }
            } else {
                VStack(alignment: .center) {
                    Image.notificationImage
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.top, 50)
                    Text("It's Still Empty")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Why not try garbage trash first".capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .padding(.top, 50)
        .padding(.horizontal, 20)
        .overlay(alignment: .top) {
            Header(nameHeader: "Trash Conversion History")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)

    }
}

#Preview {
    NavigationView {
        AnorganicHistoryView()
    }
    .environmentObject(ecoRecAppViewModel())
}

