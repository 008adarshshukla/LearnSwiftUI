//
//  UserDefaultsBootcam.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct UserDefaultsBootcam: View {
    
    //creating an instance of the user Deafults.
    let userDefaults = UserDefaults()
    
    @State var textFieldText: String = ""
    
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
                saveData()
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.blue.opacity(0.7).cornerRadius(20))
                    .padding()
            }
            
            Text(textFieldText)
            
        }
        .onAppear {
            if let value = userDefaults.value(forKey: "username") as? String {
                textFieldText = value;
            }
        }
    }
    
    func saveData() {
        userDefaults.set(textFieldText, forKey: "username")
    }
}

struct UserDefaultsBootcam_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsBootcam()
    }
}

/*
 UserDefaults contains different suites that are identified by their suiteName. This can allow you to create different UserDefaults for different sections of your app, but it also allows you to share content between multiple apps and extensions that use the same App Group.

 Your suiteName cannot be the same as your apps bundle identifier. Using the global domain is also not allowed as it is not writeable by apps.
 
 By using a particular suiteName, you are creating a userDefaults, that is not bounded to a particular application (whereas standard UserDefaults are different for every application).
 */
