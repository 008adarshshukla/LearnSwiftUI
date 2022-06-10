//
//  AlertBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 08/06/22.
//

import SwiftUI

/*
 struct AlertBootcamp: View {
     
     @State var showAlert: Bool = false
     @State var backgroundColor: Color = Color.yellow
     @State var alertMessage: String = ""
     @State var alertTitle: String = ""
     
     var body: some View {
         
         ZStack {
             //background
             
             backgroundColor
                 .edgesIgnoringSafeArea(.all)
             
             VStack {
                 Button("Button 1") {
                     alertTitle = "ERROR UPLOADING VIDEO"
                     alertMessage = "The video could not be uploaded."
                     showAlert.toggle()
                 }
                 Button("Button 1") {
                     alertTitle = "SUCCESSFULLY UPLOADED VIDEO"
                     alertMessage = "The video now public"
                     showAlert.toggle()
                 }
             }
             .alert(isPresented: $showAlert) {
                 getAlert()
             }
         }
     }
     
     func getAlert() -> Alert {
         
         //return  Alert(title: Text("There was an error"))
         
 //        return Alert(title: Text("This is the title"),
 //                     message: Text("Describe the error"),
 //                     primaryButton: .destructive(Text("Delete"), action: {
 //                   backgroundColor = .white
 //               }),
 //                     secondaryButton: .cancel())
         
         return Alert(title: Text(alertTitle),
                      message: Text(alertMessage),
                      dismissButton: .default(Text("OK")))
     }
 }

 */

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    @State var alertType: MyAlerts? = nil
    
    //enum foe different alerts
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            //background
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button 1") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
            
        case .success:
            return Alert(title: Text("This was a success!"),
                         message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = Color(uiColor: .systemBackground)
            }))
            
        default:
            return Alert(title: Text("Default error!!!"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}


