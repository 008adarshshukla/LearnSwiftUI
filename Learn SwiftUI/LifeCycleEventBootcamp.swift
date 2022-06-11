//
//  LifeCycleEventBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 10/06/22.
//

import SwiftUI

struct LifeCycleEventBootcamp: View {
    
    //MARK: Propreties
    @State var myText: String = "Start Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                //wait for five seconds and do this.
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
            }
            .onDisappear {
                myText = "Ending Text"
            }
            
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct LifeCycleEventBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleEventBootcamp()
    }
}

/*
 SwiftUI gives us equivalents to UIKit’s viewDidAppear() and viewDidDisappear() in the form of onAppear() and onDisappear(). You can attach any code to these two events that you want, and SwiftUI will execute them when they occur.
 
 Here we have put onAppear function on Rounded rectangle. Since intially only 3 rectangles appear on the screen hence the count reflects 3 as we scroll down and new rectangles appear on screen the count gets incremented.
 
 Delay can ve added via DispatchQueue.main.asyncAfter(deadline: <#T##DispatchTime#>, execute: <#T##() -> Void#>) method.

 */
