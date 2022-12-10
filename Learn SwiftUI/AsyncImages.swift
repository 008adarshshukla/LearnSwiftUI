//
//  AsyncImages.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 12/06/22.
//

import SwiftUI

struct AsyncImages: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        //this version is not much customisable.
//        AsyncImage(url: url)
        
        //to get greater customisability use the following completion
        //it returns the image(type: Image) corresponding to the url which can be customised.
//        AsyncImage(url: url) { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 300, height: 300)
//                .cornerRadius(150)
//        } placeholder: {
//            ProgressView()
//        }

        //Another compltion with content of type AsyncImage Phase.
//        Getting Load Phases
//        case empty -> No image is loaded(still loading) so use placeholder.
//        case success(Image) -> An image succesfully loaded, so put the image.
//        case failure(Error) -> An image failed to load with an error so put the desired image or use the error returned.
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(150)
                
            case .failure( _):
                Image(systemName: "questionmark")
                    .font(.headline)
                
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
    }
}

struct AsyncImages_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImages()
    }
}

/*
 This is only available for iOS 15 and above.
 
 SwiftUI has a dedicated AsyncImage for downloading and displaying remote images from the internet.
 
 Note how the URL is optional – the AsyncImage will simply show a default gray placeholder if the URL string is invalid. And if the image can’t be loaded for some reason – if the user is offline, or if the image doesn’t exist – then the system will continue showing the same placeholder image.
 
 Though we can add our own custom placeholders in such situations.
 
 AsyncImagePhase represents the current phase of the asynchronous image loading operation.It is an enum with following cases
 
 Getting Load Phases
 case empty -> No image is loaded
 case success(Image) -> An image succesfully loaded
 case failure(Error) -> An image failed to load with an error 
 */
