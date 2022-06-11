//
//  onTapGestureBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 11/06/22.
//

import SwiftUI

struct onTapGestureBootcamp: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            //Adding  a normal button with action and Label.
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            //We can also add onTap modifier to allow a view to behave like a button
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(20)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding()
    }
}

struct onTapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onTapGestureBootcamp()
    }
}

/*
 Differences-
 The button has a highlighted state when it is pressed but the tap gesture does not provide this functionality.
 */
