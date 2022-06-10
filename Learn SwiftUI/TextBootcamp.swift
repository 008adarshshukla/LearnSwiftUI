//
//  TextBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 22/05/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("I am Adarsh!!! i want to be the best iOS developer" .capitalized)
            //.font(.largeTitle)
            //.fontWeight(.black)
            .foregroundColor(Color.red)
        //font can be set by following method as well.
            .font(.system(size: 30, weight: .semibold, design: .default))
        //this does not allow the font size to adjust when the user zooms in or zooms out
        
            //.underline()
            .underline(true, color: .blue)
        
            .baselineOffset(50)//distance between the lines.
        
            .kerning(2)//spacing between the charcters
            .frame(width: 400, height: 100, alignment: .leading)
        
            .minimumScaleFactor(0.5)//Use the minimumScaleFactor(_:) modifier if the text you place in a view doesn’t fit and it’s okay if the text shrinks to accommodate. For example, a label with a minimum scale factor of 0.5 draws its text in a font size as small as half of the actual font if needed.

    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
