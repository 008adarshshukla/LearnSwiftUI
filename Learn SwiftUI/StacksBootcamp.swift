//
//  StacksBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 300, height: 300)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
            .previewInterfaceOrientation(.portrait)
    }
}
/*
 Three types of atcks are possible.
 1.Horizontal Stack(H-Stack)
 2.Vertical Stack(V-Stack)
 3.Z-Stack
 
 By default the spacing there is some spacing between the items in the H-Stack and V-Stack
 By deafualt the spacing is nil. To remove this spacing set it to 0.
 
 HStack(alignment: .center, spacing: 0) {
     Rectangle()
         .fill(Color.red)
         .frame(width: 100, height: 100)
     
     Rectangle()
         .fill(Color.green)
         .frame(width: 100, height: 100)
     
     Rectangle()
         .fill(Color.orange)
         .frame(width: 100, height: 100)
 }
 
 All these Sracks have allignents.
 
 allignment on V-Stack
 VStack(alignment: .leading, spacing: 0) {
     Rectangle()
         .fill(Color.red)
         .frame(width: 300, height: 300)
     
     Rectangle()
         .fill(Color.green)
         .frame(width: 200, height: 200)
     
     Rectangle()
         .fill(Color.orange)
         .frame(width: 100, height: 100)
 
 Allignment on Z-Stack is like hangind pices of paper from the celing in front of each other.
 }
 */
