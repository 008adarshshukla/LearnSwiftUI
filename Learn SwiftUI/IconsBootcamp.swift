//
//  IconsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 23/05/22.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            //.scaledToFill()
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
        //clipping is after the frame dimensions are set.
            .clipped()
        //Note- after applying the frame dimension the image does does not fit/fill the whole the whole frame. to acheive this we need to use the modifier resizable().
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}

//Differenece between scale to fit and sacle to fill.
//Scale to Fit---> here the image always remains within the boundaries of the frame and no part of it goes out of the boundary.
//Scale to Fill---> here the image may go out of the boundary of the frame to occupy maximum space within the fram. Often with Scale to fill we use the modifier .clipped() to clip the portion outside the frame.
