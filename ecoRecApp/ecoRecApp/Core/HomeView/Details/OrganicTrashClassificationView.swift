//
//  OrganicTrashClassificationView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct OrganicTrashClassificationView: View {
    var body: some View {
        ScrollView(.vertical) {

            organicClassificationsArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Category Organic Waste")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var organicClassificationsArticles: some View {
        VStack {
            Image.organicsClassificationDetails
                .resizable()
                .frame(width: 225, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 50)
            
            Text("organic waste, types, examples, benefits and how to process it".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("Organic waste is waste that comes from the remains of living organisms both humans, animals, and plants. Do you know any examples of organic waste?organic waste is often found in everyday life. The examples that include organic waste are vegetable and fruit waste, animal waste to dry leaves.according to the Indonesian dictionary (KBBI), the definition of waste is as an item that is discarded because it is no longer used or the rest of human activities. Whereas, the meaning of organic is a substance that comes from living things.\n \n based on its origin, waste is divided into 2, namely organic and inorganic waste. In this article, we will discuss the explanation of organic waste, types, examples, to how to process it.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                
                Text("Understanding Organic Waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Quoted from the e-book organic & inorganic waste management of Yogyakarta State University by Dr. Sujarwo, M.Pd, et al, understanding organic waste is waste produced from biological materials.organic waste is called garbage, because most of it contains quite a lot of water. Household waste includes most examples of organic matter.organic waste is a type of waste that is easily decomposed through natural processes. This means that the decomposition of organic waste can occur without human intervention.organic waste is easily decomposed, because organic waste can be degraded by microbes (spoilage bacteria) or biodegradable. Therefore, organic waste is often used as compost or liquid organic fertilizer.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("Types of organic waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                
                Text("Although organic waste is known as wet waste, based on the type of organic waste is classified into 2, among others, wet and dry organic waste.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("1. Wet Organic Waste".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Wet organic waste is organic waste that contains mostly water. This is the reason that organic waste can cause unpleasant odors, because it has a lot of water content that causes this type of waste to rot quickly.\n examples of wet organic waste, among others:\n\n rotten fruit\n\n vegetable residue\n\nanimal impurities\n\nPlan skin and the like.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("2. Dry Organic Waste".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Dry organic waste includes organic waste whose moisture content is small. Usually, this waste is difficult to process again, as a result of which dry organic waste is more often burned for destruction.\n the example of dry organic waste is:\n \n king trees\n \n wood\n \n dry leaves.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("How To Manage Organic Waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Waste also has economic value, if we can process it well using certain ways or methods. In order to have economic value, waste management can be by the principle of 3R (Reuse, Reduce, Recycle) or by distributing to the nearest waste Bank.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)


                


            }
            .padding(.top, 10)
            .padding(.horizontal, 20)

            
        }
    }
    
}

#Preview {
    OrganicTrashClassificationView()
}

