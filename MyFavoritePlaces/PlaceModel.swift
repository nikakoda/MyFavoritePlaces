//
//  PlaceModel.swift
//  MyFavoritePlaces
//
//  Created by Ника Перепелкина on 02/09/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var date = Date()
    
    // let restaurantNames = ["Перцы", "Mama Roma", "Delorean", "Академия кофе", "New York"]
    
  //  static func getPlaces() -> [Place] {
  //      var places = [Place]()
  //      for place in restaurantNames {
  //          places.append(Place(name: place, location: "Красноярск", type: "Кафе", image: nil, restaurantImage: place))
  //      }
  //      return places
  //  }
    
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
    
    
}
