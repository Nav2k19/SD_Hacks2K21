/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of a single landmark.
/Within each landmark their properties are represented on the platform
*/

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var isFavorite: Bool
    var isFeatured: Bool

    
    //Organize each place into their categories
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case Food = "Food"
        case Gym = "Gym"
        case Library = "Library"
        case ResidentialCollege = "Residential College"
    }
    

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
