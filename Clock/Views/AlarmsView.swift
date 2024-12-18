//
//  AlarmsView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-17.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    Image(systemName: "bed.double.fill")
                        .foregroundColor(.white)
                        .font(.title2)
                    Text("Sleep | Wake Up")
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
                
                Spacer()
                
                HStack{
                    Text("7:30")
                        .font(.system(size: 64.0, weight: .thin,  design: .default))
                    Text("AM")
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                    
                    Spacer()
                    
                    Toggle("",isOn: Binding.constant(false))
                }
                .padding()
                
                
                
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
