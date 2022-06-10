//
//  TextEditorBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 09/06/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .cornerRadius(20)
                    //.background(Color.blue)//does not work rather use
                    .colorMultiply(.gray)
                    .opacity(0.4)
                
                
                Button(action: {
                    //code to save the text of the text fo textEditor.
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased() )
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.8).cornerRadius(20))
                        .padding()
                })
                
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
/*
 Text Field provides only one line to enter the text but if we want to enter multiple lines of the text then we need to use text Editor.
 
 By default TextEditor has max height and width of infinity
 */
