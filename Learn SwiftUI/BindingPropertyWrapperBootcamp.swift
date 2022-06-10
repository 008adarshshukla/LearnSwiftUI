//
//  BindingPropertyWrapperBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct BindingPropertyWrapperBootcamp: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ExtractedView(backgroundColor: $backgroundColor)

        }
    }
}

struct BindingPropertyWrapperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapperBootcamp()
    }
}

/*
 Binding Property wrapper is used to connect the stae properties of parent view to the child view.
 eg- We have a parent view that has backgroundColor as state variable and we have a subview, and inside this subview we want to change the backgroung color of the parent view so we declare the backgroundColor as Binding property wrapper in the subview to link it with the parent view.
 */

struct ExtractedView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.pink
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
