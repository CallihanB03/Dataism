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
    }
    
    
    @IBAction func pressedDbmsButton(_ sender: Any) {
    }
    
    @IBAction func pressedMachLearnButton(_ sender: Any) {
    }
    
    @IBAction func pressedDataVizButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==
            interviewQuestionsSegueIdentifier,
           let interviewQuestionVC =
            segue.destination as? InterviewQuestionsViewController{
            interviewQuestionVC.delegate = self
        }
        
        else if segue.identifier == dbmsSegueIdentifier, let dbmsVC = segue.destination as? SQLViewController{
            dbmsVC.delegate = self
        }
        
        else if segue.identifier == machineLearningSegueIdentifier, let machineLearningVC = segue.destination as? MachineLearningViewController{
            machineLearningVC.delegate = self
        }
        
        else if segue.identifier == dataVizSegueIdentifier, let dataVizVC = segue.destination as? DataVizViewController{
            dataVizVC.delegate = self
        }
        
        
    }
    
}
