//
//  ProfileViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    let profileToMainMenuViewControllerSegueIdentifier = "ProfileToMainMenuViewControllerSegueIdentifier"
    let profileToSettingsViewControllerSegueIdentifier = "ProfileToSettingsViewControllerSegueIdentifier"
    
    
    
    @IBOutlet weak var userProfileLabel: UILabel!
    
    @IBOutlet weak var userXPLabel: UILabel!
    @IBOutlet weak var profileHeaderLabel: UILabel!
    @IBOutlet weak var userLeagueLabel: UILabel!
    
    var loginObj = ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        segmentCtrl.selectedSegmentIndex = 1
        profileHeaderLabel.font = UIFont(name: standardFont, size: 50)
        userProfileLabel.font = UIFont(name: standardFont, size: 30)
        userXPLabel.font = UIFont(name: standardFont, size: 30)
        userLeagueLabel.font = UIFont(name: standardFont, size: 30)
        
        userProfileLabel.text = "User: \(loginObj.userName)"
        
        userXPLabel.text = "0"
        
        userLeagueLabel.text = "Bronze"
        
        
    }
    
    @IBAction func onSegmentCtrl(_ sender: Any) {
        switch segmentCtrl.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: profileToMainMenuViewControllerSegueIdentifier, sender: self)
        case 1:
            break
        case 2:
            performSegue(withIdentifier: profileToSettingsViewControllerSegueIdentifier, sender: self)
        default:
            break
        }
    }
    

}
