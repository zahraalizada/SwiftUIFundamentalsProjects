//
//  SouceDetailController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 14.04.24.
//

import UIKit

class SouceDetailController: UIViewController {
    
    @IBOutlet weak var pizzaBtnOutlet: UIButton!
    @IBOutlet weak var souceBtnOutlet: UIButton!
    @IBOutlet weak var drinkBtnOutlet: UIButton!

    @IBOutlet weak var souceImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var selectedSouce: Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedSouce?.title
        priceLabel.text = selectedSouce?.price
        descriptionLabel.text = selectedSouce?.description
        souceImage.image = UIImage(named: selectedSouce?.image ?? "")
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
