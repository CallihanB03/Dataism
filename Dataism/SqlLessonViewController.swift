//
//  SqlLessonViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/6/24.
//

import UIKit

class SqlLessonViewController: UIViewController {
    var lessonName = "s"
    
    
    @IBOutlet weak var sqlLessonTitleLabel: UILabel!
    

    @IBOutlet weak var sqlLessonDescriptionLabel: UILabel!
    
    @IBOutlet weak var sqlCodeExampleLabel: UILabel!
    
    
    @IBOutlet weak var sqlLessonTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        
        sqlLessonTitleLabel.text = "SELECT"
        sqlLessonTitleLabel.font = UIFont(name: standardFont, size: 20)
        sqlLessonDescriptionLabel.numberOfLines = 0
        
        sqlLessonDescriptionLabel.lineBreakMode = .byWordWrapping
        
        sqlLessonDescriptionLabel.text =
        "The SELECT statement in SQL is used to retrieve data from one or more tables in a database. It allows you to specify which columns you want to see, apply filters to narrow down results, sort the data, and even perform calculations or aggregations on the data. Here’s a breakdown of the components you can include in a SELECT statement:"
        
        
        
        sqlLessonDescriptionLabel.font = UIFont(name: standardFont, size: 14)
        
        sqlLessonTextLabel.backgroundColor =    .white
        
    }
    
// finish this
//    func highlightKeywords(s:String) -> String {
//        var words = s.split(separator: .whitespaces)
//        
//        for word in words {
//            {sqlKeywords.contains(word)
//        }
//            
//    }
}
