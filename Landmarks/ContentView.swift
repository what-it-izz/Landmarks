//
//  ContentView.swift
//  Landmarks
//
//  Created by Izzyv on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("California")
                .font(.title)
                .foregroundColor(Color.black)
            HStack {
                Text("Golden Gate Bridge")
                    .font(.subheadline)
                Spacer()
                Text("San Francisco")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
