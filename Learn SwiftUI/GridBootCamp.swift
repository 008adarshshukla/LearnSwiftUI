//
//  GridBootCamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 26/05/22.
//

import SwiftUI

struct GridBootCamp: View {
    
    //the number of grid item present in the array will be equals to number of columns of grid
    //Note that we have created each columns with different width.
    
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(width: .infinity, height: 400, alignment: .center)
            
            LazyVGrid(columns: column,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color.indigo)
                    .padding()
                        
                ) {
                    ForEach(0..<3) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color.indigo)
                    .padding()
                        
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            })
        }
    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}

/*
 LazyVGrid
 A container view that arranges its child views in a grid that grows vertically, creating items only as needed.
 
 It accepts the parameter spacing, allignment, columns
 
 the parameter columns is the array of grid items.
 
 GridItem refers to a description of single grid item.
 
 */
/*
 let column: [GridItem] = [
     GridItem(.fixed(50), spacing: nil, alignment: nil),
     GridItem(.fixed(75), spacing: nil, alignment: nil),
     GridItem(.fixed(100), spacing: nil, alignment: nil),
     GridItem(.fixed(75), spacing: nil, alignment: nil),
     GridItem(.fixed(50), spacing: nil, alignment: nil),
     
         //.flexible(minimum: <#T##CGFloat#>, maximum: <#T##CGFloat#>)-- takes as much space present int the view in which it is present.
         //.adaptive(minimum: <#T##CGFloat#>, maximum: <#T##CGFloat#>)--using the mentioned minimum and maximum size provided it tries to present as many as views that are possible to show int that column.
 ]
 
 var body: some View {
     LazyVGrid(columns: column, alignment: .center, spacing: nil) {
         
         //using the loops we can add different no. of items in the grid.
         ForEach(0..<50) { index in
             Rectangle()
                 .frame(height: 50)
         }
     }
 }
 */
