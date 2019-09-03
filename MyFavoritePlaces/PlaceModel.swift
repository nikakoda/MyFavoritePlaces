//
//  PlaceModel.swift
//  MyFavoritePlaces
//
//  Created by Ника Перепелкина on 02/09/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import Foundation


struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = ["Перцы", "Mama Roma", "Delorean", "Академия кофе", "New York"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Красноярск", type: "Кафе", image: place))
        }
        return places
    }
}
