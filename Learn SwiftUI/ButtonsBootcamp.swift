//
//  ButtonsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 26/05/22.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing:20) {
            
            Text(title)
            
            //button with this initializer allows us to create a button with given title and action
            Button("Press me!!!") {
                self.title = "Title Changed"
            }
            .accentColor(.red)
            
            //button with this initializer gives freedom to modify the apperance of the button
            //in label section we acn use any view to modify our button
            Button {
                self.title = "Button #2 was pressed."
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3 was pressed."
            } label: {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }

            Button {
                self.title = "Button #4 was pressed."
            } label: {
                Text("Finish".uppercased())
                    .font(.body)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }

        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
