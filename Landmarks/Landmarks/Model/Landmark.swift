import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    private var imageName: String
    private var coordinates: Coordinates
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var image: Image {
        Image(imageName)
    }
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
