//
//  ContextMenuBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 08/06/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.init(uiColor: .link)
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Hello, World!")
                .font(.headline)
            Text("Learn SwiftUI")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(20)
        //adding context menu.
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("Share Post", image: "flame.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("Report Post")
            }

            Button {
                backgroundColor = .orange
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }

        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
/*
 SwiftUI gives us the ContextMenu modifier for creating popup menus in our apps. In iOS this is usually triggered with a long press, but it works just the same as a right-click on macOS
 
 Context menu basically accepts only title and an icon.
 */
