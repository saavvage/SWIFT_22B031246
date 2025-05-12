//
//  ParentEducateView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct ParentEducateView: View {
    var body: some View {
        ScrollView(.vertical) {
         
            parentEducateArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Education For Parents")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var parentEducateArticles: some View {
        VStack(alignment: .leading) {
            Text("Tips for sorting garbage for parents".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 50)
            
            VStack(alignment: .leading) {
                Text("Good and correct household waste management starts from the habit of sorting garbage at home. By sorting waste, we can reduce the volume of waste that will eventually be thrown into landfills. There are three categories of waste that need to be sorted, namely organic, inorganic, and residue. Organics such as food waste and dried leaves can be used as fertilizer for plants. Inorganics such as paper, plastics, and metals can be recycled. While residues such as used fabrics or pampers must be disposed of in landfills.domestic trash is a type of waste that results from daily activities in the household, such as food waste, paper, plastic, metal, cloth, and other used items. Domestic waste is also often referred to as household waste or kitchen waste. This type of waste is usually produced every day and the amount can be quite large depending on the number of family members and the level of consumption and use of items in the House.\n \n how to sort garbage at home can start by providing a different trash can for each type of garbage. Usually, people use three different colors of trash cans, namely green for organic, blue for inorganic, and black for residue. After sorting the garbage, be sure to channel it to a suitable place. For organics, it can be composted in the yard of the house or handed over to the janitor. As for the inorganic, it can be handed over to the waste bank or recycling officer. Do not forget to separate hazardous waste such as batteries or fluorescent lamps, and send them to a special processing site.\n \n by sorting garbage at home, we take part in preserving the environment. We can reduce the volume of waste that will eventually be thrown into landfills, so that it can extend the life of the trash can. In addition, by processing organic waste into fertilizer, we can enrich the tan and improve the quality of the crop. Thus, there is no reason not to sort garbage at home.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("Maintain and manage waste at home".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("1. Sorting Garbage".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("There are 3 types of waste, namely organic waste, inorganic, and B3. organic waste. Do you know the difference between the three? waste that can rot and decompose so that it can be processed into compost. For example, leftover food, dried leaves, vegetables, among others. Inorganic waste is waste that is difficult to decompose and cannot be decomposed. However, inorganic waste can be recycled into something new and useful. For example, plastic bottles, waste paper, cardboard, used cans, and others. While B3 waste is waste which is materials that can endanger the health or survival of humans, other creatures, and the environment such as insect venom used necklaces , used batteries, used lamps, and used garbage masks")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)

                Text("2. Applying the 3R".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Applying the 3R principle is one step that can be done by Junior High School friends at home. 3R stands for reduce, reuse , and recycle. Junior high school friends can reduce the use of materials that are difficult to recycle such as plastic. Not only reducing waste generation, Junior High School friends can also use organic waste such as food waste and vegetables below as compost. The activity of recycling waste into new goods that are worth using is also an option that must be tried. Junior high school friends can try arranging used packaging waste into various types of bags, flower vases, and others.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)

                Text("3. Join The Garbage Bank".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Have you ever heard of garbage banks? Based on Article 1 of the regulation of the Minister of Environment and Forestry number 14 of 2021 concerning Waste Management in waste banks, waste banks are facilities for managing waste with the 3R principle (reduce, reuse, and recycle), as a means of education, behavioral change in waste management, and the implementation of a circular economy, which is formed and managed by the community, business")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)



            }

        }
    }
}

#Preview {
    ParentEducateView()
}

