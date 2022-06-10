//
//  TextField.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 09/06/22.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .padding()
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased() )
                        .font(.headline)
                        .padding()
                        .background(Color.blue.opacity(0.7).cornerRadius(20))
                        .padding()
                })
                //disabling the button if the text is inappropriate.
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFieldBootcamp!!!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        //check text.
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        //after appending we set the text field to empty.
        textFieldText = ""
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
