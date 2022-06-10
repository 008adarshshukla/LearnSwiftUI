//
//  StepperBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper 1: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Stepper(LocalizedStringKey("Stepper 2: \(stepperValue)"), value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 3") {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
/*
 Stepper: a simple - and + button that can be tapped to select a precise number
 
 Steppers are smart enough to work with any kind of number type you like, so you can bind them to Int, Double, and more, and it will automatically adapt.
 */
