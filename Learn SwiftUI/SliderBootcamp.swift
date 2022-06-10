//
//  SliderBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
        VStack {
//            Slider(value: $sliderValue)
//                .tint(.red)
//                .padding()
            
//            Slider(value: $sliderValue, in: 0...10)
//                .tint(.red)
//                .padding()
            
            Slider(value: $sliderValue, in: 0...5, step: 1.0)
                .tint(.red)
                .padding()
            
            Text(String(format: "%0.0f", sliderValue))
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
