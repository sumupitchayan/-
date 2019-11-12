//
//  LoginViewController.swift
//  alarms-app
//
//  Created by Sumu Pitchayan on 11/12/19.
//  Copyright © 2019 Sumu Pitchayan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if credentialsAreValid() {
            defaults.set(false, forKey: "loggedIn")
        }
    }
    
    func credentialsAreValid() -> Bool {
        // Checks if email and password fields are not empty
        return (emailTextField.text! != "" && passwordTextField.text != "")
    }
    
}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
