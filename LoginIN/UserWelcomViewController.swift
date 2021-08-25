//
//  UserWelcomViewController.swift
//  LoginIN
//
//  Created by Руслан Битюков on 24.08.2021.
//

import UIKit

class UserWelcomViewController: UIViewController {
    @IBOutlet var welcomUserLabel: UILabel!
    
    var nameTextField: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomUserLabel.text = "Welcom, \(nameTextField ?? "User")"
    }
}
