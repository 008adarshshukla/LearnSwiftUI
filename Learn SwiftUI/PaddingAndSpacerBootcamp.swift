//
//  PaddingAndSpacerBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will allign the text to the leading edge.")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.4),
                        radius: 10,
                        x: 0,
                        y: 10)
        )
        .padding()
    } 
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
            .previewInterfaceOrientation(.portrait)
    }
}
/*
 Padding adds an equal space around the edges of content of the view from the edges of views frame.
 */
