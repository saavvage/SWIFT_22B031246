//
//  AnorganicTrashClassificationView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct AnorganicTrashClassificationView: View {
    var body: some View {
        ScrollView(.vertical) {
            
            anorganicClassificationsArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Categories Of Inorganic Waste")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var anorganicClassificationsArticles: some View {
        VStack {
            Image.anorganicsClassificationImage
                .resizable()
                .frame(width: 225, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 50)
            
            Text("inorganic waste, definition, examples, types, and how to manage".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("Human life cannot be separated from the existence of waste, one of which is inorganic waste. The existence of this waste is the impact of meeting daily human needs.what is inorganic waste? Here are definitions, examples, and how to manage inorganic waste. \n \n trash in the Indonesian dictionary (KBBI) means discarded goods or objects that are not used anymore.\n \n garbage is also often referred to as waste that is no longer wanted because it has no economic value.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                
                Text("Definition of inorganic waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Quoted from the book organic and inorganic waste management (2022), the definition of inorganic waste is waste produced from non-living materials, non-renewable natural resources, and the results of the technological process of managing mining and industrial materials.n \n examples of inorganic waste in the form of metal waste and processed products, plastics, paper, glass and ceramics to detergent waste.most inorganic waste cannot be decomposed by nature or microorganisms.\n\n a long time is also needed for its decomposition, such as plastic waste, residual glass fragments, pieces of iron, copper, used bottles and cans, factory smoke, or leftovers from motor vehicles such as old tires, and other junk.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("Types and examples of inorganic waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Quoted from the SDGs Program Implementation book on environmental education activities, the types of inorganic waste are divided into two, namely soft and hard. Check out the explanation.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("1. Inorganic soft waste".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Inorganic soft waste is waste that is soft or flexible and easily formed. For example, plastic, synthetic cork or styrofoam, plastic straws, as well as fast food wrappers.\n\n In addition, waste in the form of liquids such as detergent water, laundry soap, cooking oil, and others.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)


                Text("2. Inorganic hard waste".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)

                Text("This inorganic hard waste is not easily destroyed. Usually, inorganic hard waste will be destroyed by a certain method, heating or incineration.\n \n examples of garbage or inorganic hard waste are broken ceramics, glass, rusty nails and used cans.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("How to manage inorganic waste".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("The purpose of waste processing so that the waste can be economically valuable. In addition, inorganic waste can be utilized and reprocessed into items that are not harmful to the environment and humans.here are three ways to manage inorganic waste that is difficult to decompose.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("1. Prevent and reduce waste from its source".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Waste sorting can be started from within the home such as separating organic and inorganic waste.reducing waste can be done in various ways such as avoiding the use of disposable goods, saving water and electricity, using cloth bags when shopping and minimizing the use of tissues.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("2. Waste Reuse".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("How to process inorganic waste can also be done by reusing the product. For example, you can use recycled paper or make crafts from plastic waste.\n\n You can also use used tin containers to become pencil cases, plastic bucket garbage and used bottles into flower pots, used clothes into rags and shopping plastic into garbage bags.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("3. waste bank".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Waste banks can be a solution for the treatment of inorganic waste that we have. The principle is three stages of sorting, sorting, and selling.\n \n sorting inorganic waste is divided into several types, namely paper, plastic, bottles, and iron. Once separated and grouped, you can take it to the trash bank.\n\n when it is in the garbage bank, your garbage will come in as a deposit. Garbage will be weighed at the bank and converted in the form of money or balance")
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
    AnorganicTrashClassificationView()
}

