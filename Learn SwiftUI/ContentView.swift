//
//  ContentView.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 That isn’t much code, but it already tells us a lot:

 Views are structs in SwiftUI. This isn’t required, but it’s strongly encouraged.
 All views must conform to the View protocol.
 That protocol requires a computed property called body that contains the actual layout for the view.
 It returns some View, which is a Swift feature called opaque return types – it means “one specific sort of view, but we don’t really care which one.”
 Inside our content view is a basic piece of UI, called Text. This is used to represent text strings in SwiftUI, either directly as labels or indirectly as text inside navigation bars, buttons, and more.
 There’s a padding() method call attached to the text, which tells SwiftUI we want some extra space around this view. In SwiftUI we call these modifiers because they modify the way the text view looks or acts.

 */
