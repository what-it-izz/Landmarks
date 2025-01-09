//
//  ContentView.swift
//  Landmarks
//
//  Created by Izzyv on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("California")
                    .font(.title)
                    .foregroundColor(Color.black)
                HStack {
                    Text("San Francisco")
                    Spacer()
                    Text("Golden Gate Bridge")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean in California, United States.")
                    .font(.system(size: 15, design: .monospaced))
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
