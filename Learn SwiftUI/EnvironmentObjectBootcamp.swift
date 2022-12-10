//
//  EnvironmentObjectBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 11/06/22.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append("airPods")
        self.dataArray.append(contentsOf: ["iMac", "iPad", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(/*viewModel: viewModel,*/ selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Apple Devices")
        }
        //paasing to the environment of the Navigation View.
        //all the views inside it will be able to access and listen for the changes in the published properties of the object.
        .environmentObject(viewModel)
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}

struct DetailView: View {
    
    let selectedItem: String
//    @ObservedObject var viewMode: EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            //bacground
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            NavigationLink {
                //FinalView(/*viewModel: viewModel*/)
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(20)
            }
        }
    }
}

struct FinalView: View {
    
    //where needed we can take from the environment.
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //background
            LinearGradient(colors: [Color.red, Color.blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            //foreground
            ScrollView {
                VStack(spacing: 20.0) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                         Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

/*
 Just like @StateObject and @ObservedObject, all classes used with @EnvironmentObject must conform to the ObservableObject protocol.
 
 For data that should be shared with many views in your app, SwiftUI gives us the @EnvironmentObject property wrapper. This lets us share model data anywhere it’s needed, while also ensuring that our views automatically stay updated when that data changes.

 Think of @EnvironmentObject as a smarter, simpler way of using @ObservedObject on lots of views. Rather than creating some data in view A, then passing it to view B, then view C, then view D before finally using it, you can create it in view A and put it into the environment so that views B, C, and D will automatically have access to it. Note here Views B, C, D lie inside A.

 Just like @ObservedObject, you never assign a value to an @EnvironmentObject property. Instead, it should be passed in from elsewhere, and ultimately you’re probably going to want to use @StateObject to create it somewhere.

 However, unlike @ObservedObject we don’t pass our objects into other views by hand. Instead, we send the data into a modifier called environmentObject(), which makes the object available in SwiftUI’s environment for that view plus any others inside it.
 */
