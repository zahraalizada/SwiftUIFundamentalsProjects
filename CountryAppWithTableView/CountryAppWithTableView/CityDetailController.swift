//
//  CityDetailController.swift
//  CountryApp
//
//  Created by Zahra Alizada on 07.04.24.
//

import UIKit

class CityDetailController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    var city: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = city?.name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityDetailCell = tableView.dequeueReusableCell(withIdentifier: "CityDetailCell") as! CityDetailCell
        cityDetailCell.cityDescLabel.text = city?.desc
        cityDetailCell.cityImage.image = UIImage(named: city?.photo ?? "")
        return cityDetailCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}
