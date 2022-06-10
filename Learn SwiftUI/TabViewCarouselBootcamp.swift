//
//  TabViewCarousel.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct TabViewCarouselBootcamp: View {
    
    let icons: [String] = [
        "heart.fill", "house.fill", "globe", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

struct TabViewCarousel_Previews: PreviewProvider {
    static var previews: some View {
        TabViewCarouselBootcamp()
    }
}
