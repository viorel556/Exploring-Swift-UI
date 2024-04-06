//
//  ModelData.swift
//  Landmarks
//
//  Created by Viorel Harabaru  on 06.04.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

// creating an array of Landmark type using Landmark type we have created
var landmarks: [Landmark] = load("landmarkData.json")

// MARK: Utility function to load a json file from the local bundle
func load<T: Decodable>(_ filename: String) -> T {
   
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do { // Attempt 1: tries just to retreive the json file;
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do { // Attempt 2: if file retrived, decodes it:
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
