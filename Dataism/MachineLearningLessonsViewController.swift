//
//  MachineLearningLessonsViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class MachineLearningLessonsViewController: UIViewController {
    var delegate: UIViewController!

    @IBOutlet weak var machineLearningImagePlaceholderLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        self.machineLearningImagePlaceholderLabel.text = ""
        self.machineLearningImagePlaceholderLabel.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    


}
