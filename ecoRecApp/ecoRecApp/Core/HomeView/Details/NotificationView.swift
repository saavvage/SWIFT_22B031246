//
//  NotificationView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                Image.notificationImage
                    .resizable()
                    .frame(width: 175, height: 150)
                
                Text("There Are No Notifications!")
                    .font(.subheadline)
                    .fontWeight(.semibold)

            }
            .padding(.top, 50)
            .frame(maxWidth: UIScreen.main.bounds.width)
            
        }
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Header(nameHeader: "Notifications")
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NotificationView()
}

