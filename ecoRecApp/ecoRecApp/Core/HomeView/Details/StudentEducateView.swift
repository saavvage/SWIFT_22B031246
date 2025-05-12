//
//  StudentEducateView.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import SwiftUI

struct StudentEducateView: View {
    var body: some View {
        ScrollView(.vertical) {
         
            studentEducateArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Education For Children")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)

    }
    
    private var studentEducateArticles: some View {
        VStack(alignment: .leading) {
            Text("Tips to accustom children to manage waste early".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 50)
            
            VStack(alignment: .leading) {
                Text("1. Routine".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Did you know that children grow up with repetition? So is this waste management behavior, it takes habituation and repetition. Parents should create a routine of sorting garbage every day. Now it is not enough, the child is able to throw garbage in its place, but the child must be able to sort garbage.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("2. Ritual".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Parents can make an interesting ritual for children such as making educational toys made from used goods. Well, the concept of zero waste toys has been discussed in previous articles, ranging from the idea of used goods that can be used, how to make to the purpose and benefits that children will get from these toys.\n\nTips that I have applied at home is every time there are used items that can be used, I immediately clean and then collected in a clean and closed place. So when I suddenly had the idea of making certain educational toys, I didn't have to bother looking for these items anymore and of course it was clean.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("3. Rules".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Rules need to be established at home in accordance with agreements between family members, including children. For example, an agreement to sort garbage and dispose of it properly so that there is no more incident of finding treasure aka finding biscuit packs on the sidelines of hihi's sofa.\n \n Next is the rule to finish the meal. Kids always have a reason to eat. Suddenly, it's hot, but it's safe to eat. With the rules and agreements, children will be more aware and wisely treat food.\n \n these are the benefits to me. Take food in accordance with the portion, to taste. If it is still less, you can add more later, instead of eating a lot but not spent. Not only does it reduce food waste, children also learn to measure themselves and be responsible.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("Environmental Care Education For Toddlers")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 45)

                Text("aya agreed with what was conveyed by Kak Mauril, as the Founder of ZWID who became the speaker of the National Children's day webinar. Kak Mauril said, the Earth is a good playground for children to sharpen their sensory abilities.\n \n Anak has a horme or high motivation to learn without being asked by others. When children are brought closer to nature, they will instinctively explore on their own. They move, touch the grass, sand and find animals in the wild. Without us knowing it, nature stimulates the child's sensory system.we can also invite them to see the beautiful natural scenery. God created the earth to be good and perfect. In gratitude, we need to take care of it so that the Earth remains beautiful and continues to provide its benefits.\n \n different from pre-school children who can already be invited to the discussion. Children aged 2-3 years we can educate with simple things through the introduction and habituation in everyday life, such as:\n 1. Invite the child to throw garbage in its place.\n2. Accustom the child to finish food.\n3. Invite children to garden and care for plants.\n4. Educate children through stories or fairy tales about how humans love other living creatures. Like not stepping on plants and not hurting animals.\n5. Invite the child to sort out the garbage in the House.\n \n these basic things greatly affect the child's concern for the environment. Let's work together to reduce waste production starting from ourselves and our families. As the saying goes, children see children do!I agree with what was conveyed by Kak Mauril, as the Founder of ZWID who became the speaker of the National Children's day webinar. Kak Mauril said, the Earth is a good playground for children to sharpen their sensory abilities.\n \n Anak has horme or high motivation to learn without being asked by others. When children are brought closer to nature, they will instinctively explore on their own. They move, touch the grass, sand and find animals in the wild. Without us knowing it, nature stimulates the child's sensory system.we can also invite them to see the beautiful natural scenery. God created the earth to be good and perfect. In gratitude, we need to take care of it so that the Earth remains beautiful and continues to provide its benefits.\n \n different from pre-school children who can already be invited to the discussion. Children aged 2-3 years we can educate with simple things through the introduction and habituation in everyday life, such as:\n1. Invite the child to throw garbage in its place.\n accustom the child to finish food.\n2. Invite children to garden and care for plants.\n3. Educate children through stories or fairy tales about how humans love other living things. Like not stepping on plants and not hurting animals.\n4. Invite the child to sort out the garbage in the House.\n \n these basic things greatly affect the child's concern for the environment. Let's work together to reduce waste production starting from ourselves and our families. As the saying goes, children see children do!")
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
    StudentEducateView()
}

