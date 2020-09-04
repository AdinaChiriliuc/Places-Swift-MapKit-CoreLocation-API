//
//  PlacesData.swift
//  Places
//
//  Created by Adina Chiriliuc on 31/08/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import Foundation
import MapKit


class PlacesData: Codable {
    var lat: Double?
    var lng: Double?
    let label: String
    let address: String

 enum CodingKeys: String, CodingKey {
    case address
    case label
    case lat
    case lng

}

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try values.decode(String.self, forKey: .address)
        self.label = try values.decode(String.self, forKey: .label)

    }

}
struct PlacesDataStore: Codable {
    var locations: [PlacesData]
}



