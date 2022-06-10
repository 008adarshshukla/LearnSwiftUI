//
//  SafeAreaBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 26/05/22.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Text("Title Goes Here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding() 
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding()
                    }
                }
                .background(Color.red)
                
            }
        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
/*
 By deafult views are placed in the safe area.
 */
/*
 Method to set background to beyond safe area and text and other thing in safe area
 
 ZStack {
     //background
     Color.blue
         .edgesIgnoringSafeArea(.all)

     //foreground.
     VStack {
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .font(.title)
         Spacer()
     }

     //.ignoresSafeArea()
 }
 */
