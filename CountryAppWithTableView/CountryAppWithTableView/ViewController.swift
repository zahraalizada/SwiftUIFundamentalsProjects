//
//  ViewController.swift
//  CountryApp
//
//  Created by Zahra Alizada on 07.04.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var registerImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.text = "zahra@gmail.com"
        passwordTextField.text = "z12345z"
    }
    
    let user = UserInfo(email: "zahra@gmail.com", password: "z12345z")

    @IBAction func loginTappedButton(_ sender: Any) {
        if let passwordLength = passwordTextField.text?.count, passwordLength < 5 || passwordLength > 10 {
               errorLabel.text = "Şifrə 5 ilə 10 simvol arasında olmalıdır."
               errorLabel.textColor = .red
               errorLabel.isHidden = false
           } else if user.email == emailTextField.text ?? "" && user.password == passwordTextField.text ?? "" {
               let controller = storyboard?.instantiateViewController(withIdentifier: "CountryListController") as! CountryListController
               navigationController?.show(controller, sender: nil)
               errorLabel.isHidden = true
           } else {
               errorLabel.text = "Səhv məlumat daxil etdiniz, zəhmət olmasa yenidən cəhd edin!"
               errorLabel.textColor = .red
               errorLabel.isHidden = false
           }
    }
}
