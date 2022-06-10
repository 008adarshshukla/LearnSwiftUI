//
//  DatePickerBootcamp.swift
//  Learn SwiftUI
//
//  Created by Adarsh Shukla on 09/06/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    //creating a date formatter.
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short //.long, .full
        //formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
        let endigDate: Date = Date()
        
        //DatePicker("Select a date",
        //           selection: $selectedDate)
        //        .datePickerStyle(.graphical)
        //        .datePickerStyle(.wheel)
        //        .datePickerStyle(.compact)
        //.datePickerStyle(.automatic)
        
        //the above Date Picker gives both time and date but using different completion we can opt out of one or the other.
        
//        DatePicker("Pick a date", selection: $selectedDate, displayedComponents: [.date])
//            .datePickerStyle(.compact)
        
        //we can also select ranges of dates and time to show.
        
        VStack {
            DatePicker("Pick a date", selection: $selectedDate, in: startingDate...endigDate, displayedComponents: [.date])
                .datePickerStyle(.compact)
                .accentColor(.blue)
            
            Text("The selceted date is : ")
//            Returns a string representation of a specified date that the system formats using the receiver’s current settings.
            Text(dateFormatter.string(from: selectedDate))
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
