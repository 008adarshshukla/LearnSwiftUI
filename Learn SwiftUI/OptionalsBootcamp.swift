//
//  OptionalsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct OptionalsBootcamp: View {
    
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Optionals Bootcamp")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This the new text! User ID is : \(userID)"
                isLoading = false
            }
        }
        else {
            displayText = "Error. There is no user Id."
        }
    }
}

struct OptionalsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OptionalsBootcamp()
    }
}

/*
 If we want to create an view which contains an optional then that view deos not appear on the screen  until we specify some valid value to it other than nil.
 */
