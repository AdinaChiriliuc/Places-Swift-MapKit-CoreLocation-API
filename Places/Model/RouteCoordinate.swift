//
//  RouteCoordinate.swift
//  Places
//
//  Created by Adina Chiriliuc on 04/09/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import Foundation
import RealmSwift

class RouteCoordinate: Object {
    @objc dynamic var latitude = 0.0
    @objc dynamic var longitude = 0.0
    @objc dynamic var route_id = ""
    @objc dynamic var created = Date()

}
