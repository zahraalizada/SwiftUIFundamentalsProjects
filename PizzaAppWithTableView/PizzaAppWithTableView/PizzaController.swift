//
//  PizzaController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 11.04.24.
//

import UIKit

class PizzaController: UIViewController {
    
    @IBOutlet weak var pizzaTableView: UITableView!
    
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
        let souceController = storyboard?.instantiateViewController(withIdentifier: "SouceController") as! SouceController
        navigationController?.show(souceController, sender: nil)
    }
    
    @IBAction func drinkTappedButton(_ sender: Any) {
        let drinkController = storyboard?.instantiateViewController(withIdentifier: "DrinkController") as! DrinkController
        navigationController?.show(drinkController, sender: nil)
    }
}

extension PizzaController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pizzas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PizzaCell") as! PizzaCell
        cell.titleLabel.text = pizzas[indexPath.row].title
        cell.priceLabel.text = pizzas[indexPath.row].price
        cell.descriptionLabel.text = pizzas[indexPath.row].description
        cell.pizzaImage.image = UIImage(named: pizzas[indexPath.row].image)
        return cell
    }
}

extension PizzaController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "PizzaDetailController") as! PizzaDetailController
        controller.selectedPizza = pizzas[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
}
