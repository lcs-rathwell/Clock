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
                HStack{
                    VStack {
                        Text ("Today, +0HRS")
                        Text ("Ottawa")
                            .font(.system(.largeTitle, design: .default, weight: .thin))
                    }
                    
                    Spacer()
                    
                    //right side
                    Text("6:35")
                        .font(.system(size: 64.0, weight: .thin,  design: .default))
                    Text("AM")
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
    }
}



#Preview {
    LandingView()
}
