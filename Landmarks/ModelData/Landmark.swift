//
//  Landmark.swift
//  Landmarks
//
//  Created by IzzyV on 1/14/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // private cus the view only cares about the actual image
    private var imageName: String
    // Image() imported from SwiftUI
    var image: Image {
        Image(imageName)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    // private cus we use it to create a public computed property
    private var coordinates: Coordinates
    // CLLocationCoordinate2D() imported from CoreLocation
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                                longitude: coordinates.longitude)
    }
}
