//
//  AnimationTimingBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.linear(duration: 5), value: isAnimating)
//            //applying animation to independent views.
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: 5), value: isAnimating)
//            //easeIn - slow to fast.
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: 5), value: isAnimating)
//            //easeOut - fast to slow.
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: 5), value: isAnimating)
//            //easeInOut - slow to fast to slow.
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5,  //time for animation
                                   dampingFraction: 0.6, // bounce back factor
                                   blendDuration: 1.0),
                           value: isAnimating)
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
