//
//  ExtractFuctionsAndViewsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct ExtractFuctionsAndViewsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    //extarction of view: Extracting a view of Z-Stack.
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press Me!!!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
        }
    }
    
    //extrecting a function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractFuctionsAndViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFuctionsAndViewsBootcamp()
    }
}
