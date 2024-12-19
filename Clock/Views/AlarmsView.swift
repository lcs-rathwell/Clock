//
//  AlarmsView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-18.
//


import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing:15) {
                ZStack {
                    HStack {
                        Image(systemName: "bed.double.fill")
                            .foregroundColor(.white)
                            .font(.title2)
                        Text("Sleep | Wake Up")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                    }
                }
                
                //other text
                .padding()
 
                HStack {
                    Text("Other")
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                }
                
                
                Spacer()
                // White line
                Divider()
                    .background(Color.white)
                //10:00
                WakeUpView(time: "10:00", amOrPm: "PM")
                Divider()
                    .background(Color.white)
                //8:15
                WakeUpView(time: "8:15", amOrPm: "AM")
                Divider()
                    .background(Color.white)
                //9:00
                WakeUpView(time: "9:00", amOrPm: "PM")
                Divider()
                    .background(Color.white)
                //9:15
                WakeUpView(time: "9:15", amOrPm: "AM")
                Divider()
                    .background(Color.white)
                Spacer()
                
                
                
                
                
            }
            .navigationTitle("Alarms")
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
}

#Preview {
    LandingView()
}
