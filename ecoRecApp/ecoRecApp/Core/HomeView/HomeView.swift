//
//  HomeView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var vm: ecoRecAppViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                Advertisement()
                
                changeYourWaste
                
                trashClassifications
                
                educateYourself
            }
            .overlay(alignment: .top) { headerSearchbar }
            .scrollIndicators(.hidden)
            
            // Кнопка карты
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        MapView() // Замените на ваш экран с картой
                    } label: {
                        Image(systemName: "map.fill")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.green)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding()
                }
            }
        }
    }
    
    private var changeYourWaste: some View  {
        VStack(spacing: 10) {
            HStack {
                Text("Change Your Trash")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                Spacer()
            }
            
            HStack {
                NavigationLink {
                    TrashConversionOrganicsDetails()
                } label: {
                    WasteConversionCard(imageCard: .changeWasteCoverOrganics, trashInfo: "Organic", price: vm.organicCurrentPrice)
                }
                
                Spacer()
                
                NavigationLink {
                    TrashConversionAnorganicsDetails()
                } label: {
                    WasteConversionCard(imageCard: .changeWasteCoverAnrganics, trashInfo: "Inorganic", price: vm.anorganicCurrentPrice)
                }
            }
            .padding(.horizontal)
        }
    }
    
    private var trashClassifications: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Classification Of Waste")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                Spacer()
            }
            
            VStack(spacing: 0) {
                NavigationLink {
                    OrganicTrashClassificationView()
                } label: {
                    TrashClassificationCard(cardImage: .trashClassificationOrganics, title: "Organic Waste")
                }
                
                NavigationLink {
                    AnorganicTrashClassificationView()
                } label: {
                    TrashClassificationCard(cardImage: .trashClassificationAnorganics, title: "Inorganic Waste")
                }
            }
        }
    }
    
    private var educateYourself: some View {
        HStack(spacing: 10) {
            ZStack {
                Image.postersEducate
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 0.5)
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Education")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Text("Yourself")
                                    .font(.title2)
                                    .fontWeight(.bold)
                            }
                            .foregroundStyle(Color.white)
                            .shadow(radius: 15)
                        }
                    }
            }
            .padding(.leading)
            .padding(.top, 10)
            
            VStack {
                NavigationLink {
                    StudentEducateView()
                } label: {
                    EducateYourselfCard(image: .forsStudentEducate, nameInfo: "For Children")
                }
                
                Spacer()
                
                NavigationLink {
                    ParentEducateView()
                } label: {
                    EducateYourselfCard(image: .forParentEducate, nameInfo: "For Parents")
                }

            }
            .padding(.trailing)
            .padding(.top, 10)
        }
    }
    
    private var headerSearchbar: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                if vm.animateTextField {
                    Image(systemName: "chevron.left")
                        .imageScale(.medium)
                        .padding(.leading)
                        .transition(.opacity)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                vm.animateTextField = false
                                vm.searchInput = ""
                            }
                        }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 0.5)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.medium)
                            .padding(.leading, 5)
                        
                        TextField("find news here".capitalized, text: $vm.searchInput)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .overlay(alignment: .trailing) {
                                if vm.searchInput.count > 3 {
                                    Image(systemName: "xmark")
                                        .imageScale(.small)
                                        .fontWeight(.bold)
                                        .foregroundStyle(Color.black)
                                        .padding(.trailing, 5)
                                        .onTapGesture {
                                            vm.searchInput = ""
                                        }
                                }
                            }
                    }
                }
                .frame(maxWidth: vm.animateTextField ? .infinity : 250)
                .frame(height: 35)
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        vm.animateTextField = true
                    }
                }
                .submitLabel(.search)
                .onSubmit {
                    withAnimation(.easeInOut) {
                        vm.searchNews()
                    }
                    dismiss()
                }
                
                if !vm.animateTextField {
                    HStack {
                        NavigationLink {
                            NotificationView()
                        } label: {
                            Image(systemName: "bell")
                                .imageScale(.large)
                                .foregroundStyle(Color.black)
                        }
                        
                        NavigationLink {
                            WalletInformationView()
                        } label: {
                            Image(systemName: "wallet.pass")
                                .imageScale(.large)
                                .foregroundStyle(Color.black)
                        }
                        
                        NavigationLink {
                            ProfileView()
                        } label: {
                            Image(systemName: "person.fill")
                                .imageScale(.large)
                                .foregroundStyle(Color.black)
                        }
                    }
                    .padding(.trailing, 20)
                    .transition(.move(edge: .trailing))
                }
            }
            .frame(maxWidth: UIScreen.main.bounds.width)
            .padding(.bottom, 10)
            .background(.regularMaterial)
            
            if vm.animateTextField {
                ScrollView(.vertical) {
                    if vm.searchInput.isEmpty {
                        VStack(alignment: .leading) {
                            Text("Hot News")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 25)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                ForEach(vm.newsCollectionData) { items in
                                    NavigationLink {
                                        NewsDetailView(news: items)
                                    } label: {
                                        HotNewsCard(news: items)
                                    }
                                }
                                
                                HStack {
                                    HStack(spacing: 5) {
                                        Image(systemName: "lightbulb")
                                            .imageScale(.medium)
                                            .padding(.leading)
                                        
                                        Text("Search Tips & Tricks")
                                            .font(.footnote)
                                            .fontWeight(.medium)
                                            .foregroundStyle(Color.black)
                                    }
                                    
                                    Spacer()
                                    
                                    Button(action: {}, label: {
                                        Text("More")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .foregroundStyle(Color.primaryColors)
                                            .padding(.trailing)
                                    })
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 5)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0.5)
                                }
                            }
                        }
                    } else {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Displaying Search Results")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 25)
                                
                                Spacer()
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                ForEach(vm.filteredNewsData) { items in
                                    NavigationLink {
                                        NewsDetailView(news: items)
                                    } label: {
                                        HotNewsCard(news: items)
                                    }
                                }
                                .transition(.identity)
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
                .background(Color.white)
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
    .environmentObject(ecoRecAppViewModel())
}
