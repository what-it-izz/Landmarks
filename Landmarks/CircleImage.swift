//
//  CircleImage.swift
//  Landmarks
//
//  Created by Izzyv on 1/8/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("GoldenGateBridge")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
