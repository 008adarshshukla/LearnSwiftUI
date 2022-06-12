//
//  SystemMaterialsAndBackgroundsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct SystemMaterialsAndBackgroundsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //applying bacground material.
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .edgesIgnoringSafeArea(.all)
        .background(
            Image("the-rock")
        )
    }
}

struct SystemMaterialsAndBackgroundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterialsAndBackgroundsBootcamp()
            .preferredColorScheme(.dark)
    }
}
