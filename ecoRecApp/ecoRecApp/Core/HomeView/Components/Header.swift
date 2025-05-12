//
//  Header.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct Header: View {
    @Environment(\.dismiss) private var dismiss
    let nameHeader: String
    
    var body: some View {
            HStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .foregroundStyle(Color.black)
                })
                
                Spacer()
                
                Text(nameHeader.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: UIScreen.main.bounds.width)
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
            .background(.regularMaterial)
    }
}

#Preview {
    Header(nameHeader: "about Us")
        .previewLayout(.sizeThatFits)
}


