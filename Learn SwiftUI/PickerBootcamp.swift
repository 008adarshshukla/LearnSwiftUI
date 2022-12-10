//
//  PickerBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 09/06/22.
//

import SwiftUI


 /*struct PickerBootcamp: View {
     
     @State var selection: String = "1"
     
     var body: some View {
         VStack {
             Picker(selection: $selection) {
                 //content
                 Text("1").tag("1")
                 Text("2").tag("2")
                 Text("3").tag("3")
                 Text("4").tag("4")
                 Text("5").tag("5")
             } label: {
                 Text("Picker")
             }
             .pickerStyle(.inline)
             
             Picker(selection: $selection) {
                 //content
                 Text("1").tag("1")
                 Text("2").tag("2")
                 Text("3").tag("3")
                 Text("4").tag("4")
                 Text("5").tag("5")
             } label: {
                 Text("Picker")
             }
             .pickerStyle(.segmented)
             
             Picker(selection: $selection) {
                 //content
                 Text("1").tag("1")
                 Text("2").tag("2")
                 Text("3").tag("3")
                 Text("4").tag("4")
                 Text("5").tag("5")
             } label: {
                 Text("Picker")
             }
             .pickerStyle(.menu)
             
         }
     }
 }
*/

/*
 struct PickerBootcamp: View {
     
     @State var selection: String = "1"
     
     var body: some View {
         VStack {
             
             HStack {
                 Text("Age : ")
                 Text(selection)
             }
             
             Picker(selection: $selection) {
                 //content
 //                Text("1").tag("1")
 //                Text("2").tag("2")
 //                Text("3").tag("3")
 //                Text("4").tag("4")
 //                Text("5").tag("5")
                 
                 //instead of typing multiple times we can use loop
                 
                 ForEach(18..<100) { number in
                     Text("\(number)").tag("\(number)")
                         .font(.subheadline)
                         .foregroundColor(.red)
                 }
             } label: {
                 Text("Picker")
             }
             //background can be given to the whole picker.
             .background(Color.red)
             .pickerStyle(.menu)
             
         }
     }
 }

*/

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var body: some View {
        VStack{
                        Picker(selection: $selection,
                               content: {
                            ForEach(filterOptions, id: \.self) { option in
                                Text(option).tag(option)
                            }
            
                        },
                               label: {
                            Text("Filters : \(selection)")
                            HStack {
                                Text("Filter:")
                                Text(selection)
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            
                        })
                        .foregroundColor(.white)
                        //.pickerStyle(.wheel)
            
            Text(selection)
                    }
        
            
            
//            HStack {
//                Text("Choose the filter")
//                Picker(selection: $selection) {
//                    ForEach(filterOptions, id: \.self) { option in
//                        HStack {
//                            Text(option).tag(option)
//                            //Image(systemName: "heart.fill")
//                        }
//                    }
//                } label: {
//                    Text("Pick filter option")
//                }
//            }
//            .font(.headline)
//            .padding()
//            .background(Color.gray.opacity(0.2))
//            .cornerRadius(10)
            
        }
    }


struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}

/*
 Picker(selection: <#T##Binding<_>#>,
        content: <#T##() -> _#>,
        label: <#T##() -> _#>)
 
 Selection has a binding variable attaiche to it to respond to it's change in state.
 
 Content holds the content(things appearing on the screen)
 
 Even though the label text isn’t visible on the screen, it’s still useful because VoiceOver will use it when reading the screen. Assign default text "Picker" to it.
 
 In the content "text" is what we see on the screen but "tag" is something that gets selected when we move to a particular choice.
 
 Data type of binding variable and content's tag must be same.
 
 To style the picker use the pickerStyle() modifier.
 */
