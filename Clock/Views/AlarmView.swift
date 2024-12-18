//
//  AlarmView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-18.
//

import SwiftUI

var body: some View {
    NavigationStack{

        VStack{
            HStack {
                ZStack {
                        Image(systemName: "bed.double.fill")
                            .foregroundColor(.white)
                            .font(.title2)
                        Text("Sleep | Wake Up")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                    }
                }
                
                Spacer()
                // White line
                Divider()
                    .background(Color.white)
                
                HStack{
                    Text("7:30")
                        .font(.system(size: 64.0, weight: .thin,  design: .default))
                    Text("AM")
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                    
                    
                    Spacer()
                    
                    Toggle("",isOn: Binding.constant(false))
                }
                .padding()
                Divider()
                    .background(Color.white)
                Spacer()
                
            }
        }
    }

                
#Preview {
    LandingView()
}
