//
//  GradientsBootCamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
        //linear gradient.
            .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
        
        //radial gradient.
//            .fill(RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 0, endRadius: 300))
        
        //Angular gradient.
            //.fill(AngularGradient(colors: [Color.red, Color.blue], center: .bottomTrailing, angle: .degrees(45)))
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
