//
//  SettingsViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    let settingsToProfileViewControllerSegueIdentifier = "SettingsToProfileViewControllerSegueIdentifier"
    
    let settingsToMainMenuViewControllerSegueIdentifier = "SettingsToMainMenuViewControllerSegueIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        
        segmentCtrl.selectedSegmentIndex = 2

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onSegmentedCtrl(_ sender: Any) {
        switch segmentCtrl.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: settingsToMainMenuViewControllerSegueIdentifier, sender: self)
        case 1:
            performSegue(withIdentifier: settingsToProfileViewControllerSegueIdentifier, sender: self)
        case 2:
            break
        default:
            break
        }
    }
    
}
