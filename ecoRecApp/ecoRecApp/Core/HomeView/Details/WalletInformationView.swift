//
//  WalletInformationView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct WalletInformationView: View {
    
    @EnvironmentObject var vm: ecoRecAppViewModel
    @State private var sheetInformation: Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
            
            Image.creditCard
                .resizable()
                .frame(width: 350, height: 350)
                .padding(.top, 50)
            
            informations
            
            buttonField
            
        }
        .sheet(isPresented: $sheetInformation, content: {
            
            sheetDetails
            
            // sheet settings
            .presentationDetents([.height(UIScreen.main.bounds.height / 2)])
            .presentationDragIndicator(.visible)
        })
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top, content: {
            Header(nameHeader: "Wallet Information")
        })
        .navigationBarBackButtonHidden(true)
    }
    
    private var informations: some View {
        VStack(alignment: .leading, spacing: 10){
            VStack(alignment: .leading, spacing: 5) {
                Text("Card Number")
                    .font(.subheadline)
                Text("4228 4073 6319 4337")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Balance")
                    .font(.subheadline)
                
                Text("TNG \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Owner Name")
                    .font(.subheadline)
                
                Text("KBTU DEANS")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
        }
        .padding(.horizontal, 20)

    }
    
    private var buttonField: some View {
        VStack {
            Button(action: {
                withAnimation(.easeOut(duration: 1.0)) {
                    sheetInformation.toggle()
                }
            }, label: {
                Text("Card Details")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(Color.primaryColors)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
                .padding(.top, 30)
            })
            
            Button(action: {
                
            }, label: {
                Text("Withdrawal")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
            })
        }
    }
    
    private var sheetDetails: some View {
        VStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Bank Name")
                    .font(.subheadline)
                
                Text("KASPI BANK")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Balance")
                    .font(.subheadline)
                
                Text("TNG \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Owner Name")
                    .font(.subheadline)
                
                Text("KBTU DEANS")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Validity Period")
                        .font(.subheadline)
                    
                    Text("01/07/2026")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .frame(maxWidth: 190 ,alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 5)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("CVC")
                        .font(.subheadline)
                    
                    Text("636")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .frame(maxWidth: 190 ,alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 5)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Balance")
                    .font(.subheadline)
                
                Text("TNG \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Retained Balance")
                    .font(.subheadline)
                
                Text("TNG 10.000")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Service Office")
                    .font(.subheadline)
                
                Text("Tole Bi 59")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
        }
            .padding(.horizontal, 20)
            .padding(.top, 20)
    }
    
}

#Preview {
    WalletInformationView()
        .environmentObject(ecoRecAppViewModel())
}

