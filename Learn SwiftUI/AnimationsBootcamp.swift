//
//  AnimationsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct AnimationsBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                //action of a button can be linked to an animation
                
                //now anything that is affected by state variable isAnimated will animate to change to different form as isAnimated will be toggled.
                
                
//                withAnimation(.default) {
//                    isAnimated.toggle()
//                }
                
                //when chaining th animation effects we need to confirm that it is an animation
                withAnimation(
                    Animation
                        .default
                        .delay(0.3)
                        //.repeatForever()
                        .repeatCount(5, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
            //adding rotation after offset will rotate the offset position as well so this should be added before it.
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            
            //offset moves up and down relative to the position
            //or left or right.
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
