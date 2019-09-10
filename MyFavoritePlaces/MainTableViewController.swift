//
//  MainTableViewController.swift
//  MyFavoritePlaces
//
//  Created by Ника Перепелкина on 01/09/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit
import RealmSwift

class MainTableViewController: UITableViewController {
    
    var places: Results<Place>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // запрос
        places = realm.objects(Place.self)
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.isEmpty ? 0 : places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        let place = places[indexPath.row]
        
        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        cell.imageOfPlaces.image = UIImage(data: place.imageData!)
        
        cell.imageOfPlaces.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces.clipsToBounds = true
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        newPlaceVC.saveNewPlace()
        
        tableView.reloadData()
    }
    
    
    
    
    
}
