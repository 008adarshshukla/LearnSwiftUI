//
//  ExtractSubviewsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.init(uiColor: .link)
                .edgesIgnoringSafeArea(.all)
            
            //the extracted subView is used multiplt times with different properties
            HStack {
                MYItem(title: "Oranges", count: 5, color: .orange)
                MYItem(title: "Bananas", count: 3, color: .yellow)
                MYItem(title: "Apples", count: 4, color: .red)
            }
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

//Note- Creating a subview is same as creating a new file.
//this is also useful when we want to reuse a view with different proprties everytime.
struct MYItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .bold()
            Text(title)
                .font(.headline)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
