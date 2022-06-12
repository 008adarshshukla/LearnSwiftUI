//
//  textSelectionBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct textSelectionBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
        //by default it is disabled.
    }
}

struct textSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        textSelectionBootcamp()
    }
}
