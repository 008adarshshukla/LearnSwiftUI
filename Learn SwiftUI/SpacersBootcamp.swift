//
//  SpacersBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 24/05/22.
//

import SwiftUI

struct SpacersBootcamp: View {
    var body: some View {
        //example of alliging the two images on the top corners of the view.
        VStack {
            HStack (spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
//                    .frame(height: 10)
//                    .background(Color.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.blue)
            .padding()
            
            Spacer()
//                .frame(width: 10)
//                .background(Color.orange)
        }
    }
}

struct SpacersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacersBootcamp()
    }
}
/*
 1.Spacer resizes as big as the parent view allows.
 2.Spacer expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.
 3.by default spacer is transparent.
 4.if there are multiple spacers(with same modifiers) then they will automatically resize to be of equal length.
 5.practically this could be used to perfectly allign muliple buttons/views with equal spacing.
 */

/*
 Note - Default spacing between the the views in the horizontal and vertical stack is 8.
 */

/*
 eg1.
 
 HStack (spacing: 0) {
     Spacer()
         .frame(height: 10)
         .background(Color.red)
     
     Rectangle()
         .frame(width: 50, height: 50)
         .foregroundColor(.red)
     
     Spacer()
         .frame(height: 10)
         .background(Color.red)
     
     Rectangle()
         .frame(width: 50, height: 50)
         .foregroundColor(.green)
     
     Spacer()
         .frame(height: 10)
         .background(Color.red)
 }
 .background(Color.blue)
 
 */
