//
//  FocusStateBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

 //When only one field is present.
 
 
 struct FocusStateBootcamp: View {
     
     @FocusState private var isUsernameFocused: Bool
     @State private var username = ""
     
     var body: some View {
         VStack {
             TextField("Type something here...", text: $username)
                 .font(.headline)
                 .padding()
                 .background(Color.gray.opacity(0.3).cornerRadius(20))
                 .padding()
         }
         .onAppear {
             DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                 self.isUsernameFocused = true
             }
         }
         .onSubmit {
             self.isUsernameFocused = false
         }
     }
 }


/*struct FocusStateBootcamp: View {
    
    enum FocusedField: Hashable {
        case textFieldFocused
        case passwordFieldFocused
    }
    
    //make it optional showing that that there is no filed in focus in starting
    @FocusState private var focusedField: FocusedField?
    @FocusState private var isUsernameFocused: Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            TextField("Type something here...", text: $username)
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(20))
                .padding()
                .focused($focusedField, equals: FocusedField.textFieldFocused)
                .submitLabel(.continue)//changes return button to continue.
            
            SecureField("Enter the password...", text: $password)
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(20))
                .padding()
                .focused($focusedField, equals: FocusedField.passwordFieldFocused)
                .submitLabel(.done)//changes return button to done.
        }
        .onAppear {
            focusedField = .textFieldFocused
        }
        .onSubmit {
            if focusedField == .textFieldFocused {
                focusedField = .passwordFieldFocused
            }
            else {
                focusedField = nil
            }
        }
    }
}*/

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}

/*
 SwiftUI gives us a specific property wrapper for tracking which view currently receives user input, called @FocusState. This can be bound to a Boolean to control a single field, or to an enum to control movement between several.

 If you just want to control whether a single piece of input has keyboard focus you can use this with a Boolean
 
 If you want to move keyboard focus between more than one view you should use an optional enum. This can be set to one of the cases from your enum to activate a particular piece of input, or you can set it to nil to make nothing focused – effectively dismissing the keyboard on iOS.

 So, we could create two text fields to store a username and password, then move between them using @FocusState and onSubmit():


 */
