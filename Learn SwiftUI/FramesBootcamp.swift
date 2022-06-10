//
//  FramesBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}
/*
 Every objct has a frame that surrounds it.
 By default the height and width of the frame is same as that of the content in the frame.
 We can also fix the size of the frame as above(.frame(.....))
 
 We can stack backgrounds and frames on the top of the other.
 */

/*
 eg-->
 
 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
     .background(Color.red)
     .frame(width: 200, height: 200, alignment: .topLeading)
     .background(Color.green)
//        stuff before the frame is the content of the frame
//        this shows that Text and its red background is the content of the frame. The frame has background Color red
//        we can allign the content of the frame.
 
 */
