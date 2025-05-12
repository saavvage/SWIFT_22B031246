//
//  TrashConversionAnorganicsDetails.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct TrashConversionAnorganicsDetails: View {
    
    @EnvironmentObject var vm: ecoRecAppViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var animateValue: Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
            if !animateValue {
                wasteBankInformations
                textFieldAndButton
            } else {
                informationsAfterTransactions
            }
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Exchange Inorganic Waste")
        }
        .navigationBarBackButtonHidden(true)

    }
    
    private var wasteBankInformations: some View {
        VStack(alignment: .leading) {
            Text("Address Of Garbage Bank")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.all, 10)
            
            Divider()
            
            Text("Almaty,81 Timiryazev St., Auezov St. (in the courtyard between the houses) 8-701-721-55-73.")
                .font(.system(size: 14))
                .padding(.all, 10)
                .padding(.bottom, 10)
            
        }
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 0.5)
        }
        .padding(.top, 50)
        .padding(.horizontal, 20)

    }
    
    private var textFieldAndButton: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Garbage Redemption Details")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            TextField(text: $vm.trashAmountInputAnorganics) {
                Text("Amount Of Waste In Kilograms")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            .padding(.leading)
            .padding(.vertical, 5)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.5)
            )
            .overlay(alignment: .trailing) {
                if !vm.trashAmountInputAnorganics.isEmpty {
                    Text("Kg")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                }
            }
            
            Text("Calculation Results Into Money")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            
            Text("TNG \(vm.calculateAnorganicValueInRupiah())")
                .font(.subheadline)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            
            Button {
                withAnimation(.easeInOut) {
                    vm.addAnorganicChangeItems()
                    animateValue.toggle()
                }
                
            }label: {
                Text("Switch Now")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 5)

            }
            .background(
                Color.green
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
            .disabled(vm.disableButton(input: vm.trashAmountInputAnorganics))
            .opacity(vm.disableButton(input: vm.trashAmountInputAnorganics) ? 0.5 : 1.0)

            
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)

    }
    
    private var informationsAfterTransactions: some View {
        VStack(spacing: 15) {
            Image.thankyouImage
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 70)
            
            Text("Thank you for exchanging your trash given nature will return to nature".capitalized)
                .font(.subheadline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            
            Button {
                dismiss()
                animateValue.toggle()
            }label: {
                Text("Return Home")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 5)
            }
            .background(
                Color.green
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
        }
        .padding(.horizontal, 20)
        .transition(.move(edge: .trailing))
        
    }
    
}

#Preview {
    TrashConversionAnorganicsDetails()
        .environmentObject(ecoRecAppViewModel())
    
}

