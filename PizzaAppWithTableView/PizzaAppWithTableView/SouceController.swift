//
//  SouceController.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 14.04.24.
//

import UIKit

class SouceController: UIViewController {
    
    @IBOutlet weak var souceTableView: UITableView!
    
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

extension SouceController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        souces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SouceCell") as! SouceCell
        cell.titleLabel.text = souces[indexPath.row].title
        cell.priceLabel.text = souces[indexPath.row].price
        cell.descriptionLabel.text = souces[indexPath.row].description
        cell.souceImage.image = UIImage(named: souces[indexPath.row].image)
        return cell
    }
}

extension SouceController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SouceDetailController") as! SouceDetailController
        controller.selectedSouce = souces[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
}
