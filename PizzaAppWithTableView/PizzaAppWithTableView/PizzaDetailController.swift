//
//  PizzaDetailController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 12.04.24.
//

import UIKit

class PizzaDetailController: UIViewController {

    @IBOutlet weak var pizzaBtnOutlet: UIButton!
    @IBOutlet weak var souceBtnOutlet: UIButton!
    @IBOutlet weak var drinkBtnOutlet: UIButton!
    
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedPizza: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedPizza?.title
        priceLabel.text = selectedPizza?.price
        descriptionLabel.text = selectedPizza?.description
        pizzaImage.image = UIImage(named: selectedPizza?.image ?? "")
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
