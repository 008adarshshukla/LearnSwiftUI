//
//  BadgesBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        //using in List
//        List {
//            Text("Hello World")
//                .badge(
//                    Text(Image(systemName: "bubble.left.circle.fill"))
//                )
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
        
        
        //using a Tab View.
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(3)//integer badge
            
            Color.blue
                .tabItem {
                    Image(systemName: "globe")
                }
                .badge("New")
            
            Color.green
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .badge(2)
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
/*
 SwiftUI’s badge() modifier lets us add numbers and text to tab view items and list rows, with the purpose of drawing the user’s attention to some supplementary status information – something like a number over a tab icon to represent an unread message count, for example.
 */
