//
//  StopwatchView.swift
//  Clock
//
//  Created by Jack William Rathwell on 2024-12-17.
//

import SwiftUI

struct StopwatchView: View {
    var body: some View {
        VStack {
                 

                    Spacer()

                    // Timer Display
                    Text("00:00.00")
                .font(.system(size: 64, weight: .thin, design: .monospaced))
                        .padding()

                    Spacer()

                    // Lap List
                    VStack {
                        HStack {
                            Text("Lap 1")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("00:30.42")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding(.horizontal)
                        .foregroundColor(.gray)

                        HStack {
                            Text("Lap 2")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("01:12.18")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding(.horizontal)
                      
                    }
                    .padding()

                    Spacer()

                    // Buttons (Non-functional)
                    HStack {
                        CircleButton(label: "Reset", color: .gray)
                        Spacer()
                        CircleButton(label: "Start", color: .green)
                    }
                    .padding(.horizontal, 50)
                }
            }
        }

        struct CircleButton: View {
            let label: String
            let color: Color

            var body: some View {
                ZStack {
                    Circle()
                        .fill(color)
                        .frame(width: 80, height: 80)
                    Text(label)
                        .font(.headline)
                        .foregroundColor(.white)
        }
    }
}

#Preview {
    StopwatchView()
}
