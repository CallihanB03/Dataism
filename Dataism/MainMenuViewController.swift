//
//  MainMenuViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/4/24.
//

import UIKit

class MainMenuViewController: UIViewController {
    var delegate: UIViewController!
    @IBOutlet weak var mainMenuPromptLabel: UILabel!
    @IBOutlet weak var interviewQuestionButton: UIButton!
    @IBOutlet weak var dbmsButton: UIButton!
    @IBOutlet weak var mlButton: UIButton!
    @IBOutlet weak var dataVizButton: UIButton!
    
    let interviewQuestionsSegueIdentifier = "InterviewQuestionsSegueIdentifier"
    let dbmsSegueIdentifier = "SQLSegueIdentifier"
    let machineLearningSegueIdentifier = "MLSegueIdentifier"
    let dataVizSegueIdentifier = "DataVizSegueIdentifier"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        mainMenuPromptLabel.font = UIFont(name: standardFont, size: 35)
        
        interviewQuestionButton.tintColor = UIColor.black
        dbmsButton.tintColor = UIColor.black
        mlButton.tintColor = UIColor.black
        dataVizButton.tintColor = UIColor.black
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedInterviewQuestionsButton(_ sender: Any) {
        performSegue(withIdentifier: interviewQuestionsSegueIdentifier, sender: self)
    }
    
    
    @IBAction func pressedDbmsButton(_ sender: Any) {
        performSegue(withIdentifier: dbmsSegueIdentifier, sender: self)
    }
    
    @IBAction func pressedMachLearnButton(_ sender: Any) {
        performSegue(withIdentifier: machineLearningSegueIdentifier, sender: self)
    }
    
    @IBAction func pressedDataVizButton(_ sender: Any) {
        performSegue(withIdentifier: dataVizSegueIdentifier, sender: self)
    }
    
}
