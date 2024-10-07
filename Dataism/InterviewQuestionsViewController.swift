//
//  InterviewQuestionsViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/6/24.
//

import UIKit

class InterviewQuestionsViewController: UIViewController {
    var delegate: UIViewController!
    var question = ""
    var answer = ""

    @IBOutlet weak var interviewQuestionsLabel: UILabel!
    @IBOutlet weak var interviewQuestionToDisplayLabel: UILabel!
    @IBOutlet weak var interviewButton: UIButton!
    @IBOutlet weak var interviewQuestionAnswerToDisplay: UILabel!
    
    @IBOutlet weak var interviewQuestionSeeAnswerButton: UIButton!
    
    
    var interviewQuestionsObj = InterviewQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = mainBackgroundColor
        interviewQuestionsLabel.font = UIFont(name: standardFont, size: 20)
        
        interviewQuestionToDisplayLabel.font = UIFont(name: standardFont, size: 20)
        
        interviewQuestionToDisplayLabel.numberOfLines = 0
        interviewQuestionToDisplayLabel.lineBreakMode = .byWordWrapping
        
        interviewButton.tintColor = UIColor.black
        
        
        
        interviewQuestionAnswerToDisplay.font = UIFont(name: standardFont, size: 20)
        
        interviewQuestionAnswerToDisplay.text = ""
        interviewQuestionAnswerToDisplay.numberOfLines = 0
        
        interviewQuestionAnswerToDisplay.lineBreakMode = .byWordWrapping
        
        interviewQuestionSeeAnswerButton.tintColor = UIColor.black
    }
    
    
    
    @IBAction func interviewButtonPressed(_ sender: Any) {
        question = interviewQuestionsObj.getRandomQuestion()
        interviewQuestionToDisplayLabel.text = question
    }
    
    
    @IBAction func interviewSeeAnswerButtonPressed(_ sender: Any) {
        if question == "" {
            interviewQuestionAnswerToDisplay.text = "No Question Displayed"
        }
        
        else {
            answer = interviewQuestionsObj.interviewQuestionsDict[question]!
            
            interviewQuestionAnswerToDisplay.text = answer
        }
    }
    
    
}
