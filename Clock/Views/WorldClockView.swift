//
//  WorldClockView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-17.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack{
            VStack {
                //Ottawa
                ExtractedView(timeZoneOffset: "+0", city: "Ottawa", time: "6:35", amOrPm: "AM")
            }
        }
    }
}



#Preview {
    LandingView()
}

struct ExtractedView: View {
    
    //MARK Stored properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    var body: some View {
        HStack{
            VStack {
                Text ("Today, \(timeZoneOffset)+0HRS")
                Text (city)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            
            //right side
            Text(time)
                .font(.system(size: 64.0, weight: .thin,  design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
        }
        
        
        .navigationTitle("World Clock")
        .toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                
                Button("Edit") {
                    // Does nothing right now
                }
                
            }
            
            ToolbarItem(placement: .primaryAction) {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                    
                }
            }
        }
    }
}
