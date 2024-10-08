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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        segmentCtrl.selectedSegmentIndex = 1
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
