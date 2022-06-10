//
//  ScrollViewsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 24/05/22.
//

import SwiftUI

struct ScrollViewsBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { i in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { j in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewsBootcamp()
    }
}

/*
 ScrollView(showsIndicators: false) {
     VStack {
         ForEach(0..<50) { index in
             Rectangle()
                 .fill(Color.blue)
                 .frame(height: 300)
         }
     }
 }
 */
/*
 If we have regular V-Stack or H-Satck then all the data that is present in it will load as soon as the screen is created. Consider a situation where only few of the views appear on the screen at once but we load the data for all the views. This can be rectified via using LazyVStack or LazyHStack. When these are used the data to the views are loaded when they are just about to appear on the screen.
 */
