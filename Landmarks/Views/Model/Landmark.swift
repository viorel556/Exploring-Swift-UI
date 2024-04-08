
import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    // Abstract: Landmark model that coresponds to our JSON data;
    /// We add codable to make the data easier to "travel" between docs in an iOS project
    
    // MARK: BASIC DATA about parks
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
     // MARK: IMAGES
    // Creating an image entity:
    private var imageName: String
    var image: Image { Image(imageName) }
    
     // MARK: COORDINATES
    // Creating a Coordinates Type:
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    // Creating a "coordinates" entity:
    private var coordinates: Coordinates
    // This is used to interact with MapKit framework:
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
  
}
