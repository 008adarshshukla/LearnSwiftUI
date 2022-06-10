//
//  ToggleBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 09/06/22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status : ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            Toggle(isOn: $toggleIsOn) {
                Text("Chage Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            
            Spacer()
        }
        .padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
