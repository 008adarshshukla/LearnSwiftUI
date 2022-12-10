//
//  ListsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 07/06/22.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana","peach"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    
                    .onDelete { indexSet in
                        delete(indexSet: indexSet)
                    }
                    
                    .onMove { indexSet, newOffset in
                        move(from: indexSet, to: newOffset)
                    }
                    
                    .listRowBackground(Color.red)
                }
            }
            //styling the list
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        add()
                    }
                }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from: IndexSet, to: Int) {
        fruits.move(fromOffsets: from, toOffset: to)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListsBootcamp()
    }
}
/*
 A List is a container that presents rows of data arranged in a single column.
 
 We can add an remove(swipe) and swap rows of the list.
 
 We can have differnt sections with different headers and footers in the list.
 */
