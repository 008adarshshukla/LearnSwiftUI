//
//  AppStorageBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 11/06/22.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @State var textFieldText: String = ""
    @AppStorage("username") var savedFieldText: String?
    
    var body: some View {
        VStack {
            TextField("Enter username", text: $textFieldText)
                .padding()
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(15)
                .padding()
            
            Button {
                savedFieldText = textFieldText
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.blue.opacity(0.7).cornerRadius(20))
                    .padding()
            }
            
            if let username = savedFieldText {
                Text(username)
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

/*
 SwiftUI has a dedicated property wrapper for reading values from UserDefaults, which will automatically reinvoke your view’s body property when the value changes. That is, this wrapper effectively watches a key in UserDefaults, and will refresh your UI if that key changes.
 
 Changing the property  will cause the new value to be written to UserDefaults immediately, while also updating the view.
 
 Important: @AppStorage writes your data to UserDefaults, which is not secure storage. As a result, you should not save any personal data using @AppStorage, because it’s relatively easy to extract.
 */
