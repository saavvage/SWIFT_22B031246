//
//  AboutUsView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct AboutUsView: View {
    
    private let instagramProfile: URL? = URL(string: "https://www.instagram.com/kbtu_official/")
    private let gitProfile: URL? = URL(string: "https://kbtu.edu.kz/ru/")
    
    var body: some View {
        ScrollView(.vertical) {
            
            profileImage
            
            briefSummary
            
            linkAndAdditionalResources
            
        }
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Header(nameHeader: "About Us")
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    private var profileImage: some View {
        ZStack(alignment: .trailing) {
            Image.backgroundAboutUs
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .offset(x: 110)

            
            Image.creatorPhoto
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 260)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 0.5)
                }
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .padding(.top, 45)
    }
    
    private var briefSummary: some View {
        VStack {
            Text("About us")
                .font(.headline)
                .padding(.top)
                .fontWeight(.medium)
            
            Text(" We have developed an application that will revolutionize the approach to waste recycling. Our app helps users manage waste effectively, reducing their negative impact on the environment. We are committed to creating a greener and more sustainable world through innovative waste solutions.\n \n We offer easy-to-use tools for monitoring and tracking different types of waste, as well as resources for sharing and recycling materials. \n\n Our goal is not only to reduce waste, but also to instill in the user a responsible attitude towards the environment.")
                .font(.system(size: 13))
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            HStack {
                HStack(spacing: 0) {
                    Image(systemName: "bubble.right.fill")
                        .imageScale(.large)
                    Image(systemName: "bubble.right.fill")
                        .imageScale(.large)
                }
                .foregroundStyle(Color.green)
                .padding(.top, 10)
                
                Text("On May 13, 2025, the app starts to work correctly ;)")
                    .font(.system(size: 13))
                    .fontWeight(.medium)
                    .baselineOffset(0)
            }
            
            .padding(.horizontal, 20)
            .padding(.top, 30)
        }
    }
    
    private var linkAndAdditionalResources: some View {
        VStack {
            HStack {
                Text("Further contacts".capitalized)
                    .font(.headline)
                    .padding(.top, 30)
                    .fontWeight(.medium)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption)
                    Text("kbtu@kbtu.kz".description)
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Divider()
            
            HStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Instagram")
                            .font(.caption)
                        
                        if let instagramProfile {
                            Link(destination: instagramProfile, label: {
                                Text("Click Here")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.primaryColors)
                            })
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("WebSite")
                            .font(.caption)
                        
                        if let gitProfile {
                            Link(destination: gitProfile, label: {
                                Text("Click Here")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.primaryColors)
                            })
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Warm Regards")
                        .font(.caption)
                    Text("Myrzakanurov Arman thank you for the new knowledges and the best semester!")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)

        }
    }
}

#Preview {
    AboutUsView()
}

