//
//  RegisterViewController.swift
//  hbo
//
//  Created by nisal jayathilaka on 1/26/20.
//  Copyright © 2020 nisal jayathilaka. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextFiled: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailAddressTextFiled: UITextField!
    @IBOutlet weak var passwordTextFeild: UITextField!
    @IBOutlet weak var confirmPasswordtextField: UITextField!
    @IBOutlet weak var zipCodeTetxField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> String? {
        
        if firstNameTextFiled.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailAddressTextFiled.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextFeild.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "please fill in all fields."
        }
        
        let cleanedPassword = passwordTextFeild.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if Utilities.isPasswordValid(cleanedPassword) == false
        {
            return " please make sure your password is at least 8 hcarackers, contains a special character and a number"
        }
        
        return nil
    }
   

}
