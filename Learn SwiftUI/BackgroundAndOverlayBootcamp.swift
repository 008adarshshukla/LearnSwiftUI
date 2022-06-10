//
//  BackgroundAndOverlayBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //showing that bacgrounds and overlays have alignment with respect to the frame they are applied to.
        Rectangle()
            .fill(Color.black)
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                ,alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                ,alignment: .bottomTrailing
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}

/*
 example for combined use of backgrounds and overlays.
 Image(systemName: "heart.fill")
     .font(.system(size: 40))
     .foregroundColor(Color.white)
     .background(
         Circle()
             .fill(
                 LinearGradient(colors: [Color.blue, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
             )
             .frame(width: 100, height: 100)
             .shadow(color: Color.indigo, radius: 10, x: 0.0, y: 10.0)
             .overlay(
                 Circle()
                     .fill(Color.blue)
                     .frame(width: 35, height: 35)
                     .overlay(
                         Text("5")
                             .font(.headline)
                             .foregroundColor(.white)
                     )
                     .shadow(color: Color.indigo, radius: 10, x: 5, y: 5)
                 ,alignment: .bottomTrailing
             )
     )
 */
