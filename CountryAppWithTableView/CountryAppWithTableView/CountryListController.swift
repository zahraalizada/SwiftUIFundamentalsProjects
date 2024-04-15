//
//  CountryListController.swift
//  CountryApp
//
//  Created by Zahra Alizada on 07.04.24.
//

import UIKit

class CountryListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    let countries = [
        Country(name: "Azerbaijan", photo: "az-flag", cities: [City(name: "Ganca", photo: "ganca", desc: "Lorem is Ganca."),
                                                               City(name: "Baku", photo: "baku", desc: "The capital city of Azerbaijan.") ]),
        Country(name: "Turkey", photo: "tr-flag", cities: [City(name: "Istanbul", photo: "istanbul", desc: "Lorem is Istanbul."),
                                                           City(name: "Ankara", photo: "ankara", desc: "The capital city of Turkey.") ]),
        Country(name: "Russia", photo: "ru-flag", cities: [City(name: "Tver", photo: "tver", desc: "Lorem is Tver."),
                                                           City(name: "Moskova", photo: "moskova", desc: "The capital city of Russia.") ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            title = "Countries"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let countryCell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as! CountryCell
        countryCell.countryNameLabel.text = countries[indexPath.row].name
        countryCell.countryImage.image = UIImage(named: countries[indexPath.row].photo)
        return countryCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = countries[indexPath.row]
        if let cityController = storyboard?.instantiateViewController(withIdentifier: "CityController") as? CityController {
            cityController.country = selectedCountry
            navigationController?.show(cityController, sender: nil)
        }
    }
}
