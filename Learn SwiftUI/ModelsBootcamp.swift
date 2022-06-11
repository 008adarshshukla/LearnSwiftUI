//
//  ModelsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 11/06/22.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
}

struct ModelsBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Adarsh", userName: "008adarsh", followerCount: 0),
        UserModel(displayName: "Sahil", userName: "bhola", followerCount: 200),
        UserModel(displayName: "Aman", userName: "bamby", followerCount: 500)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelsBootcamp()
    }
}
