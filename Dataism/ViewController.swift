//
//  ViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 9/24/24.
//

import UIKit
let standardFont:String = "HelveticaNeue-Bold"
let mainBackgroundColor:UIColor = UIColor(red: 191/255, green: 87/255, blue: 0/255, alpha: 1)


class ViewController: UIViewController {
    @IBOutlet weak var dataismLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    
    let registrationSegueIdentifier = "RegistrationSegueIdentifier"
    let loginSegueIdentifier = "LoginSegueIdentifier"
    
    var userName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        statusLabel.font = UIFont(name: standardFont, size: 16)
        statusLabel.text = ""
        dataismLabel.font = UIFont(name: standardFont, size: 70)
        loginLabel.font = UIFont(name: standardFont, size: 18)
        userNameLabel.font = UIFont(name: standardFont, size: 16)
        passwordLabel.font = UIFont(name: standardFont, size: 16)
        loginButton.backgroundColor = mainBackgroundColor
        loginButton.tintColor = UIColor.black
        orLabel.font = UIFont(name: standardFont, size: 16)
        registerButton.backgroundColor = mainBackgroundColor
        registerButton.tintColor = UIColor.black
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if (userNameTextField.text == "" || passwordTextField.text == ""){
            statusLabel.text = "Invalid Login"
            return
        }
        
        userName = userNameTextField.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == registrationSegueIdentifier,
           let registrationVC = segue.destination as? RegistrationViewController{
            registrationVC.delegate = self
        }
        
        else if segue.identifier == loginSegueIdentifier {
            if let mainMenuVC = segue.destination as? MainMenuViewController {
                mainMenuVC.delegate = self
                
            }
        }
    }
    
    


}

