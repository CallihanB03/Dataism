//
//  SQLViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/6/24.
//

import UIKit

class SQLViewController:
    UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let sqlLessonsTableViewCellIdentifer = "SqlLessonTextCellIdentifier"
    
    @IBOutlet weak var sqlLessonsTableView: UITableView!
    @IBOutlet weak var sqlTopicsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sqlLessonsTableView.delegate = self
        sqlLessonsTableView.dataSource = self
        sqlTopicsLabel.font = UIFont(name: standardFont, size: 20)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sqlKeywords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sqlLessonsTableView.dequeueReusableCell(withIdentifier: sqlLessonsTableViewCellIdentifer, for: indexPath)
        let row = indexPath.row
            cell.textLabel?.text = sqlKeywords[row]
            return cell
    }
    
}
