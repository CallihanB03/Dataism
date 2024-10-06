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
    override func viewDidLoad() {
        super.viewDidLoad()
        sqlLessonTitleLabel.text = lessonName
        sqlLessonTitleLabel.font = UIFont(name: standardFont, size: 20)
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
