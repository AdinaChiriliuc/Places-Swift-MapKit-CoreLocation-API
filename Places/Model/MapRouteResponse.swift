//
//  MapRouteResponse.swift
//  Places
//
//  Created by Adina Chiriliuc on 04/09/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import Foundation
import CoreLocation

struct MapRouteResponse {
    var coordinates: [CLLocationCoordinate2D] = []
    var distance: Double = 0.0000
    var duration: Double = 0.0000
    var error: String? = nil
}
