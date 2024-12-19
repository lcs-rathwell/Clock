//
//  AlarmsView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-17.
//

import SwiftUI


struct WakeUpView: View {
    
    let time: String
    let amOrPm: String
    
    var body: some View {
        HStack{
            Text(time)
                .font(.system(size: 64.0, weight: .thin,  design: .default))
            HStack {
                Text(amOrPm)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
                Toggle("",isOn: Binding.constant(false))
            }
        }
    }
}

#Preview {
    LandingView()
}

