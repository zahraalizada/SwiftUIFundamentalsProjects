//
//  DrinkController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 14.04.24.
//

import UIKit

class DrinkController: UIViewController {
    
    @IBOutlet weak var drinkTableView: UITableView!
    
    @IBOutlet weak var pizzaBtnOutlet: UIButton!
    @IBOutlet weak var souceBtnOutlet: UIButton!
    @IBOutlet weak var drinkBtnOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func pizzaTappedButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "PizzaController") as! PizzaController
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func souceTappedButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SouceController") as! SouceController
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func drinkTappedButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "DrinkController") as! DrinkController
        navigationController?.show(controller, sender: nil)
    }
}

extension DrinkController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrinkCell") as! DrinkCell
        cell.titleLabel.text = drinks[indexPath.row].title
        cell.priceLabel.text = drinks[indexPath.row].price
        cell.descriptionLabel.text = drinks[indexPath.row].description
        cell.drinkImage.image = UIImage(named: drinks[indexPath.row].image)
        return cell
    }
}

extension DrinkController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "DrinkDetailController") as! DrinkDetailController
        controller.selectedDrink = drinks[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
}
