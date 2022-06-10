//
//  ActionSheetsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 08/06/22.
//

import SwiftUI

/*
 struct ActionSheetsBootcamp: View {
     
     @State var showActionSheet: Bool = false
     
     var body: some View {
         
         Button("Press Me!!!") {
             showActionSheet.toggle()
         }
         
         .actionSheet(isPresented: $showActionSheet, content: {
             getActionSheet()
         })
     }
     
     func getActionSheet() -> ActionSheet {
         //ActionSheet(title: Text("This is the title."))
         
         //creating an array of buttons to to provide to the actionsheet.
         let button1: ActionSheet.Button = .default(Text("DEFAULT"))
         let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
         let button3: ActionSheet.Button = .cancel()
         
         let buttons: [ActionSheet.Button] = [button1, button2, button3]
         
         return ActionSheet(title: Text("This the title"),
                            message: Text("This is the message"),
                            buttons: buttons)
     }
 }

 */

struct ActionSheetsBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions? = .isOthersPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOthersPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                    actionSheetOption = .isMyPost//change
                } label: {
                    Image(systemName: "ellipsis")
                }
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        //ActionSheet(title: Text("This is the title."))
        
        //creating an array of buttons to to provide to the actionsheet.
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share the post.
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //add code to report the post.
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //add code to delete the post.
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
            
        case .isOthersPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
            
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, deleteButton, cancelButton]
            )
        case .none:
            return ActionSheet(title: Text("This should not appear"))
        }
    }
}

struct ActionSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetsBootcamp()
    }
}
