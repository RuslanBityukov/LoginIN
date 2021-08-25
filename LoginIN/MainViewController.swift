//
//  ViewController.swift
//  LoginIN
//
//  Created by Руслан Битюков on 24.08.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingcVC = segue.destination as? UserWelcomViewController else { return }
        settingcVC.nameTextField =  nameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginInButton() {
        if nameTextField.text == "Login" && passwordTextField.text == "Password" {
        } else {
            showAlert(with: "Attention", and: "Wrong login or password")
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "Oppps", and: "Please enter Login")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Oppps", and: "Please enter Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}


extension MainViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

