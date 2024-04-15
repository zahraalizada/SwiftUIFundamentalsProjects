//
//  CountryController.swift
//  TableCollectionTask
//
//  Created by Zahra Alizada on 13.04.24.
//

import UIKit

class CountryController: UIViewController {
    
    var countries = [Country]()
    let countryManager = CountryManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Countries"
        countries = countryManager.getCountries()
    }
}

extension CountryController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCell", for: indexPath) as! CountryCell
        cell.backgroundColor = .red
        cell.countryLabel.text = countries[indexPath.item].name
        cell.countryImage.image = UIImage(named: countries[indexPath.item].image)
        return cell
    }
}

extension CountryController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "CityController") as? CityController {
            controller.country = countries[indexPath.row]
            navigationController?.show(controller, sender: nil)
        }
    }
}

extension CountryController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: collectionView.frame.width/2 - 18, height: 100)
    }
}
