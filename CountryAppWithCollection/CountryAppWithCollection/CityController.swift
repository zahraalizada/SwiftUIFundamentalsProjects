//
//  CityController.swift
//  TableCollectionTask
//
//  Created by Zahra Alizada on 13.04.24.
//

import UIKit

class CityController: UIViewController {
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = country?.name
    }
}

extension CityController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        country?.cities.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCell", for: indexPath) as! CityCell
        cell.backgroundColor = .lightGray
        cell.cityLabel.text = country?.cities[indexPath.row].name
        cell.cityImage.image = UIImage(named: country?.cities[indexPath.row].image ?? "")
        return cell
    }
}

extension CityController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(identifier: "CityDetailController") as! CityDetailController
        controller.city = country?.cities[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
}

extension CityController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: collectionView.frame.width/3 - 18, height: 120)
    }
}
