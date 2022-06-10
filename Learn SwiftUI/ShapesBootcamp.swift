//
//  ShapesBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 22/05/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule()
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
        
        
        //changing the color of the circle.
            //.fill(Color.blue)
        //another way to change the color of the circle
            //.foregroundColor(.red)
        
        //stroke refers to the border line of the shape. if we apply any modifier after calling stroke then it will be applied to the border.
            //.stroke()
            //.stroke(.red)
            //.stroke(.red, lineWidth: 25)
            //.stroke(.red, style: StrokeStyle(lineWidth: 25, lineCap: .butt, dash: [30]))
            //.trim(from: 0, to: 0.5)
            //.foregroundColor(.red)
        
        //combining trim with stroke.
            //.trim(from: 0.2, to: 1.0)
            //.stroke(.red, lineWidth: 20)
        
            .frame(width: 300, height: 200)
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
