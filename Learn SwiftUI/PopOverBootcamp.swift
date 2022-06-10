//
//  PopOverBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 07/06/22.
//

/*
 This tutorial basically focuses on presenting a new Screen using
 1.sheets
 2.transitions
 3.animations
 */

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
                
            }
            //Method 3 Using Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
            //UIScreen.main.bounds.height refers to height of screen
            
        }
    }
}

struct NewScreen : View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
        //NewScreen(showNewScreen: <#Binding<Bool>#>)
    }
}


/*
 Method 2 - Using Animations and transitions.
 
 import SwiftUI

 struct PopOverBootcamp: View {
     
     @State var showNewScreen: Bool = false
     
     var body: some View {
         ZStack {
             Color.orange
                 .edgesIgnoringSafeArea(.all)
             
             VStack {
                 Button("Button") {
                     showNewScreen.toggle()
                 }
                 .font(.largeTitle)
                 Spacer()
                 
             }
             
 //            //Method 1 using Sheets
 //            previous tutorial.
             
             
             //Method 2 - using Transitions.
             
             ZStack {
                 if showNewScreen {
                     NewScreen(showNewScreen: $showNewScreen)
                         .transition(.move(edge: .bottom))
                         .animation(.spring())
                 }
             }.zIndex(2.0)
         }
     }
 }

 struct NewScreen : View {
     
     @Binding var showNewScreen: Bool
     
     var body: some View {
         ZStack(alignment: .topLeading) {
             Color.purple
                 .edgesIgnoringSafeArea(.all)
             
             Button {
                 showNewScreen.toggle()
             } label: {
                 Image(systemName: "xmark")
                     .foregroundColor(.white)
                     .font(.largeTitle)
                     .padding(20)
             }
         }
     }
 }

 struct PopOverBootcamp_Previews: PreviewProvider {
     static var previews: some View {
         PopOverBootcamp()
         //NewScreen()
     }
 }

 
 */
