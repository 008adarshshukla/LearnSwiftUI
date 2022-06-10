//
//  ColorBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //using swiftUI colors
                //Color.primary
                
                //using colores of UIKit.
                //system colors support dark and light mode.
                //Color(uiColor: .secondarySystemBackground)
                
                //using custom colors from assets.
                //we can provide different colors that appear in dark and light mode.
                Color("CustomColor")
            )
            .frame(width: 300, height: 200, alignment: .center)
        
            //.shadow(radius: 15)//with this modifiertype we get black colored shadow.
        
            //providing the custom shadow.
            .shadow(color: Color("CustomColor").opacity(0.2), radius: 20, x: 30, y: -20)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
            .preferredColorScheme(.dark)
            
    }
}
