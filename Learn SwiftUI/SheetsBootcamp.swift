//
//  SheetsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 06/06/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .cornerRadius(20)
            }
            
            //this can be called anywhere in the view.
            .fullScreenCover(isPresented: $showSheet) {
                //DO NOT ADD CONDITIONAL LOGIC HERE
                SecondScreen()
            }
            
//            .sheet(isPresented: $showSheet) {
                  //DO NOT ADD CONDITIONAL LOGIC HERE
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    
    //declare this to dismiss the sheet
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                //call this to dismiss the sheet
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //SecondScreen()
    }
}

/*
 1.we can use only one sheet per view hierarchy.
 2.we can also use only one fullScreenCover per view hierarchy.
 3.we can use either one sheet or one fulllScreenCover per view hierarchy.
 4.these can be called anywhere in the view hierarchy.
 5.Using Text("\(showSheet.description)") We can confirm that when the sheet is dismissed the value returns to "false"
 */
