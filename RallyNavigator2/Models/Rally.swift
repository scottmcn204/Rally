//
//  Rally.swift
//  RallyNavigator2
//
//  Created by Scott McNally on 20/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

class Rally: Decodable, Identifiable{
    var id : UUID?
    var name : String
    var date : String
    private var coordinates : Coordinates
    var note : String
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    class Coordinates:Decodable{
        var latitude: Double
        var longitude: Double
    }
}

