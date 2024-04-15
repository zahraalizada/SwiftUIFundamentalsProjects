//
//  CityController.swift
//  CountryApp
//
//  Created by Zahra Alizada on 07.04.24.
//

import UIKit

class CityController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cities"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country?.cities.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityCell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityCell
        cityCell.cityCell.text = country?.cities[indexPath.row].name
        return cityCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCity = country?.cities[indexPath.row]
        if let cityDetailController = storyboard?.instantiateViewController(withIdentifier: "CityDetailController") as? CityDetailController {
            cityDetailController.city = selectedCity
            navigationController?.show(cityDetailController, sender: nil)
        }
    }
}
