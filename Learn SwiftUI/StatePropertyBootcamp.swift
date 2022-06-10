//
//  StatePropertyBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct StatePropertyBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //bacground
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20) {
                
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 1") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
        }
    }
}

struct StatePropertyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyBootcamp()
    }
}

/*
 if we give a variable a state property wrapper then we are telling the view to watch the state of the variable, if its state changes then we might need to change the view.
 */
