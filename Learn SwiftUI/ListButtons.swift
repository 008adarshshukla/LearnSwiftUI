//
//  ListButtons.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 18/12/22.
//

import SwiftUI

struct ListButtons: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...10, id: \.self) { _ in
                    Row()
                }
            }
        }
    }
}

struct ListButtons_Previews: PreviewProvider {
    static var previews: some View {
        ListButtons()
    }
}

struct Row: View {
    @State var text: String = "Hello"
    var body: some View {
        HStack {
            Text(text)
            Button {
                if text ==  "Hello" {
                    text = "changed"
                } else {
                    text = "Hello"
                }
            } label: {
                if text == "Hello" {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                } else if text == "changed" {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.black)
                }
            }

        }
    }
}
