//
//  ViewController.swift
//  UITask1
//
//  Created by Zahra Alizada on 30.03.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var registerImage: UIImageView!
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchButtonTapped(_ sender: UISwitch) {
        if sender.isOn {
            passwordTextField.isSecureTextEntry = false
        } else {
            passwordTextField.isSecureTextEntry =  true
        }
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        registerStart()
    }
    
    func registerStart() {
        if let fullname = fullnameTextField.text,
           let email = emailTextField.text,
           let phone = phoneTextField.text,
           let password = passwordTextField.text {
            
            let user = UserModel(fullname: fullname, email: email, phone: phone, password: password)
            
            resultTextField.text = "Name: \(user.fullname), Email: \(user.email), Phone: \(user.phone), Password: \(user.password)"
            resultTextField.isHidden = false
        }
    }
}

