//
//  InitializersBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 24/05/22.
//

import SwiftUI

struct InitializersBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InitializersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializersBootcamp()
    }
}

/*
 Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.
 
 use-->
 It is a function that runs to set up the view. Suppose we want to use the same view many times in the app but with diiferent apperances then we can use custom initializers to initalise every instance of the view.
 */
