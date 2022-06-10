//
//  ImagesBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("the-rock")
            //.renderingMode(.template)
            .resizable()
            .scaledToFit()
            //.foregroundColor(.red)
            .frame(width: 400, height: 300)
            //.cornerRadius(50)
        //to meake the image circular when width and height are same then we set the corner radius to half of width/height
            //.cornerRadius(200)
        
        //we can make the image circular even if the height and width are not the same.
           
            .clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 100.0)
                //Ellipse()
                Circle()
            )
        
    }
 //Note---> the images with no background can be converted as icon by setting their rendering mode to template, and now their foreground color can be changed.
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
