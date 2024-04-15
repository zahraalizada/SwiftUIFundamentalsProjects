//
//  DrinkDetailController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 14.04.24.
//

import UIKit

class DrinkDetailController: UIViewController {
    
    @IBOutlet weak var pizzaBtnOutlet: UIButton!
    @IBOutlet weak var souceBtnOutlet: UIButton!
    @IBOutlet weak var drinkBtnOutlet: UIButton!
    
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedDrink: Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedDrink?.title
        priceLabel.text = selectedDrink?.price
        descriptionLabel.text = selectedDrink?.description
        drinkImage.image = UIImage(named: selectedDrink?.image ?? "")
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
