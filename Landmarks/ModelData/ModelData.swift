//
//  ModelData.swift
//  Landmarks
//
//  Created by IzzyV on 1/14/25.
//

import Foundation

// Generic function that can work with any type T that conforms to the Decodable protocol.
// The _ before filename allows the function to be called without an argument label
//      (e.g., load("file.json")).
// Returns an instance of type T.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data // immutable variable to hold the contents of the file
    // Get the Json file
    // guard means we safely unwraps the result.
    //      If the file cannot be found, the else block is executed.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    // Attempt to read the contents of the file as raw binary data.
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // Decode the data into a Swift Object
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

// Array of landmarks initialized from landmarkData.json.
var landmarks: [Landmark] = load("landmarkData.json")
