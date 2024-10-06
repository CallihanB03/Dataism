//
//  RegistrationViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 9/27/24.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var registrationWelcomeLabel: UILabel!
    @IBOutlet weak var createAccountLabel: UILabel!
    @IBOutlet weak var registrationUsernameLabel: UILabel!
    @IBOutlet weak var registrationEmailLabel: UILabel!
    @IBOutlet weak var registrationPasswordLabel: UILabel!
    @IBOutlet weak var registrationConfirmPasswordLabel: UILabel!
    @IBOutlet weak var registrationUsernameTextField: UITextField!
    @IBOutlet weak var registrationEmailTextField: UITextField!
    @IBOutlet weak var registrationPasswordTextField: UITextField!
    @IBOutlet weak var registrationConfirmPasswordTextField: UITextField!
    @IBOutlet weak var registrationEnterButton: UIButton!
    @IBOutlet weak var registrationStatusLabel: UILabel!
    
    
    
    let registrationWelcomeStr = "Welcome to Dataism"
    let createAccountStr = "Please Create An Account"
    
    var delegate: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        registrationWelcomeLabel.font = UIFont(name: standardFont, size: 35)
        registrationWelcomeLabel.text = registrationWelcomeStr
        
        
        createAccountLabel.text = createAccountStr
        createAccountLabel.font = UIFont(name: standardFont, size: 20)
        
        registrationUsernameLabel.font = UIFont(name: standardFont, size: 16)
        registrationEmailLabel.font = UIFont(name: standardFont, size: 16)
        registrationPasswordLabel.font = UIFont(name: standardFont, size: 16)
        registrationConfirmPasswordLabel.font = UIFont(name: standardFont, size: 16)
        
        registrationEnterButton.backgroundColor = mainBackgroundColor
        registrationEnterButton.tintColor = UIColor.black
        
        registrationStatusLabel.font = UIFont(name: standardFont, size: 16)
        registrationStatusLabel.text = ""
        
        
        
        
        
        

    }
    
    
    @IBAction func registrationEnterButtonPressed(_ sender: Any) {
        // error handling
        
        if (registrationUsernameTextField.text == "" || registrationEmailTextField.text == "" || registrationPasswordTextField.text == "" || registrationConfirmPasswordTextField.text == "") {
            registrationStatusLabel.text = "Please fill in all fields."
        }
        
        else if (registrationPasswordTextField.text != registrationConfirmPasswordTextField.text){
            registrationStatusLabel.text = "Passwords do not match."
        }
        
        else {
            self.dismiss(animated:true)
        }
        
        
        
    }
    
    
    
}
