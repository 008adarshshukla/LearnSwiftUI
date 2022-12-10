//
//  NavigationViewBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 07/06/22.
//
//Link- https://www.google.com/search?q=how+to+use+toolbaar+in+navigation+view+swiftUI&oq=how+to+use+toolbaar+in+navigation+view+swiftUI&aqs=chrome..69i57.14566j0j1&sourceid=chrome&ie=UTF-8

//Link- https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("take to destination") {
                    MyOtherScreen()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
//                //grouped version
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    Image(systemName: "person.fill")
//                    Image(systemName: "gear")
//                }
                
                //Another group version
                ToolbarItem(placement: .navigationBarLeading) {
                    //content
                    HStack {
                        Image(systemName: "person.fill")
                        NavigationLink {
                            //Destination
                            MyOtherScreen()
                        } label: {
                            Image(systemName: "gear")
                        }

                    }
                }
                
                //single version.
                ToolbarItem(placement: .navigationBarTrailing) {
                    //content
                    Image(systemName: "person.fill")
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.init(uiColor: .systemPink)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Pink Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Custom Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}

/*
 Navigation View is the top level view which contains other views, except when a tab view contains multiple(or one) navigation views.
 
 Navigation View has navigation bar which contains navigation items which include navigation bar title and and buttons which can be added to its leading and trailing sides of the navigation bar.
 
 It allows us to push and pop screens with ease, present information in a clear, hierarchical way for users.
 
 Items in Naviagtion View are added leaving the space for navigation bar until specified otherwise.
 
 We can add a naviagtion link to push a new view(destination) on the screen
 
 The destination view has a back button to the parent navigation view. Hiding the navigation button hides the default back button. However we can add custom back buttons as made in sheets.
 
 The toolbar() modifier lets us add single or multiple bar button items to the leading and trailing edge of a navigation view, as well as other parts of our view if needed. These might be tappable buttons, but there are no restrictions – you can add any sort of view.
 
 We haven’t specified where the button should be displayed, but that’s okay – SwiftUI knows the trailing edge is the best place for left to right languages, and will automatically flip that to the other side for right to left languages. If you want to control the exact position of your button, you can do so by wrapping it in a ToolbarItem and specifying the placement you want.
 
 f you want to place multiple bar buttons in different locations, you can just repeat ToolbarItem as many times as you need and specify a different placement each time.

 To put multiple bar buttons in the same locations, you should wrap them in a ToolbarItemGroup, like above
 */

/*
 struct NavigationViewBootcamp: View {
     var body: some View {
         NavigationView{
             ScrollView{
                 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             }
             .navigationTitle("All Inboxes")
             .navigationBarTitleDisplayMode(.automatic)//converst large to inline.
             //.navigationBarHidden(true)
         }
     }
 }
 */
