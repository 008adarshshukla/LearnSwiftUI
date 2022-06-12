//
//  ListSwipeActionBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana","peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            //action1
                        }
                        .tint(.blue)
                        
                        Button("Save") {
                            //action2
                        }
                        .tint(.green)
                        
                        Button("Delete") {
                            //action3
                        }
                        .tint(.red)
                    }
            }
        }
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}

/*
 we can add multiple custom operations that can be performed on swiping a particular row.
 */
