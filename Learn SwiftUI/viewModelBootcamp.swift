//
//  viewModelBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 11/06/22.
//

import SwiftUI

//confroming to the identifiable protocol allows us to loop through the array of objects of this struct.

//MARK: Model
struct FruitsModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}


//MARK: ViewModel
class FruitsViewModel: ObservableObject {
    
    @Published var fruitsArray: [FruitsModel] = [
        FruitsModel(name: "Apple", count: 2)
    ]
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitsModel(name: "Oranges", count: 6)
        let fruit2 = FruitsModel(name: "Pineapples", count: 3)
        let fruit3 = FruitsModel(name: "Mango", count: 10)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitsArray.append(fruit1)
            self.fruitsArray.append(fruit2)
            self.fruitsArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func delete(indexSet :IndexSet) {
        fruitsArray.remove(atOffsets: indexSet)
    }
}

//MARK: View
struct viewModelBootcamp: View {
    
//    @ObservedObject var fruitsViewModel:FruitsViewModel = FruitsViewModel()
    @StateObject var fruitsViewModel:FruitsViewModel = FruitsViewModel()
    
    var body: some View {
        
        NavigationView{
            List {
                if fruitsViewModel.isLoading {
                    ProgressView()
                }
                else {
                    ForEach(fruitsViewModel.fruitsArray) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.count)")
                        }
                    }
                    .onDelete { indexSet in
                        fruitsViewModel.delete(indexSet: indexSet)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RandomView()) {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                }
            }
        }
    }
}

struct viewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        viewModelBootcamp()
        //RandomView()
    }
}


struct RandomView: View {
    
    @ObservedObject var fruitsViewModel = FruitsViewModel()
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(fruitsViewModel.fruitsArray) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

/*
 @Published notifies a class that on of its property has been changed and it needs to update it.
 
 @ObservedObject tells the view that it need to observe the corresponding object for changes.
 
 An object of a class can only be set to @ObservedObject if and only the class confroms to to ObservableObject Protocol.
 
 In the View we have declared the object of FruitsViewModel as an @ObservedObject so that view is aware of any changes that happen  to the properties of this object and change the interface accordingly. But the down side is, if the view refreshes the properties of this also refreshes(sometimes, @ObservedObject could accidentally release the object it was storing) but we might want the data to persist even after the view refreshes so we can declare this object as @StateObject
 
 Important: We should use @StateObject only once per object, which should be in whichever view is responsible for creating the object. All other views that share your object should use @ObservedObject.
 */
