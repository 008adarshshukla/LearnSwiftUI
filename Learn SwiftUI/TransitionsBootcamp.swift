//
//  TransitionsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .animation(.easeInOut)
//            }
            
//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    //.animation(.easeInOut)
//            }
            
//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
//            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)))
                
                    .animation(.easeInOut)
            }
                
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsBootcamp()
    }
}

//transitions are used used when we want to add some view to the view hierarchy(screen) which is not present currently on the screen
//animations are used to change the appearence and behaviour of the view present on the views hierarchy.

//transitions are animations that occur when a View is being drawn on or off the screen. We need to use transition with animation to make it work!
