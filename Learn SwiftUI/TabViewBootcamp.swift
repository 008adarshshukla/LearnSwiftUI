//
//  TabViewBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    //with this the initally selected view will be the view with provided tag.
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("BROWSE TAB")
                .tabItem {
                    Label("Browse", systemImage: "globe")
                }
                .tag(1)
            
            Text("PROFILE TAB")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(2)
        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

/*
 When you want to show two separate views with SwiftUI, the easiest and most user-intuitive approach is with a tab bar across the bottom of our app. In our case, that means we’ll put our menu view in one tab and the active order in another. SwiftUI gives us a TabView for just this purpose, and it works much like a UITabBarController.

 Creating tabs is as easy as putting different views inside an instance of TabView, but in order to add an image and text to the tab bar item of each view we need to use the tabItem() modifier.
 
 We can add a tag to each view in the tab view which is binded to a particular value and can control which tab is active programmaticlly.
 */

struct HomeView: View {
    
    @Binding var selectedTab:Int
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                //1.
                Text("HOME TAB")
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                
                //2.
                Button {
                    changeView(viewTag: 2)
                    
                } label: {
                    Text("Go to the Profile")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                }
            }
        }
        
    }
    
    func changeView(viewTag: Int) {
        selectedTab = viewTag
    }
}
