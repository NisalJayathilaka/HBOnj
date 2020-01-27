//
//  SignInViewController.swift
//  hbo
//
//  Created by nisal jayathilaka on 1/26/20.
//  Copyright © 2020 nisal jayathilaka. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

  
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupelments()
        // Do any additional setup after loading the view.
    }
    func setupelments() {
        Utilities.styleTextField(emailAddressTextField)
    }
    

    @IBAction func singInTapped(_ sender: Any) {
    }
    

}
