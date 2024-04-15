//
//  CityDetailController.swift
//  TableCollectionTask
//
//  Created by Zahra Alizada on 13.04.24.
//

import UIKit

class CityDetailController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var city: City?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = city?.name
    }
}

extension CityDetailController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityDetailCell") as! CityDetailCell
        cell.cityImage.image = UIImage(named: city?.image ?? "")
        cell.cityDescriptionLabel.text = city?.description
        return cell
    }
}

extension CityDetailController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
