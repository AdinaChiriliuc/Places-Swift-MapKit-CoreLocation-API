//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Adina Chiriliuc on 31/08/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import UIKit
import CoreLocation

class PlacesTableViewController: UITableViewController {
    
    private var placesURL = "https://demo1042273.mockable.io/mylocations"

   @Published var places = [PlacesData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        getPlacesList()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MapViewController {
        destination.location = places[(tableView.indexPathForSelectedRow?.row)!]
           }
       }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell", for: indexPath) as! PlacesTableViewCell

        cell.placesAddressLabel!.text = places[indexPath.row].address
        cell.locationLabel!.text = places[indexPath.row].label
        
        return cell
    }
    
    
    func getPlacesList() {
          
            guard let placesURL = URL(string: placesURL) else {
                return
    }
            let request = URLRequest(url: placesURL)
            let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
                if let error = error {
                    print(error)
                    return
        }
                if let data = data {
                self.places = self.parseJsonData(data: data)
                OperationQueue.main.addOperation({
                    self.tableView.reloadData()
                    })
                }
            })
            task.resume()
   }

        func parseJsonData(data: Data) -> [PlacesData] {
            var places = [PlacesData]()

            let decoder = JSONDecoder()
            do {
                let placesDataStore = try decoder.decode(PlacesDataStore.self, from: data)
                places = placesDataStore.locations
            } catch {
                print(error)
            }
            return places
    }
}


