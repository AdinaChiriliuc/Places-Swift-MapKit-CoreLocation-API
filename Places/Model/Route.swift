//
//  Route.swift
//  Places
//
//  Created by Adina Chiriliuc on 04/09/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import Foundation
import RealmSwift

class Route: Object {
      @objc dynamic var latitudeA = 0.0
      @objc dynamic var longitudeA = 0.0
      @objc dynamic var latitudeB = 0.0
      @objc dynamic var longitudeB = 0.0
      @objc dynamic var distance = 0.0
      @objc dynamic var duration = 0.0
      @objc dynamic var id = UUID().uuidString
      
        
        override static func primaryKey() -> String? {
          return "id"
        }
        
        deinit {
            print("deinit", distance)
        }
    }


