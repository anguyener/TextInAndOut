//
//  LoginViewController.swift
//  TextInAndOut
//
//  Created by Anna Nguyen on 10/24/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let username = UserDefaults.standard.string(forKey: "username") {
            nameTextField.text = username
        }
    }
    
    
    @IBAction func goButtonTapped(_ sender: Any) {
        print(nameTextField.text ?? "no name")
        print(passwordTextField.text ?? "no password")
        
        UserDefaults.standard.set(nameTextField.text ?? "", forKey: "username")
        UserDefaults.standard.synchronize()
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin")
    }
    
    // handling return button should be in "textFieldShouldReturn".
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        }
        if textField == passwordTextField && !(nameTextField.text?.isEmpty ?? false) {
            passwordTextField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
    
}

