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
                CityView(timeZoneOffset: "+0", city: "Ottawa", time: "6:35", amOrPm: "AM")
                //Vancouver
                CityView(timeZoneOffset: "-3", city: "Vancouver", time: "3:35", amOrPm: "AM")
                //Hamburg
                CityView(timeZoneOffset: "+6", city: "Hamburg", time: "12:35", amOrPm: "PM")
                //Sydney
                CityView(timeZoneOffset: "+16", city: "Sydney", time: "10:35", amOrPm: "PM")
                //Dubai
                CityView(timeZoneOffset: "+9", city: "Dubai", time: "3:35", amOrPm: "PM")
                //Mexico City
                CityView(timeZoneOffset: "-1", city: "Mexico City", time: "5:35", amOrPm: "AM")
                
            }
        }
    }
}



#Preview {
    LandingView()
}

struct CityView: View {
    
    //MARK Stored properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    var body: some View {
        HStack{
            VStack {
                Text ("Today, \(timeZoneOffset)HRS")
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
