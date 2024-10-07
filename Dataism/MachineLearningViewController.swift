//
//  MachineLearningViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class MachineLearningViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var delegate: UIViewController!
    let machineLearningTableViewCellIdentifier = "MachineLearningTableViewCellIdentifier"
    let machineLearningLessonsSegueIdentifier = "MachineLearningLessonsSegueIdentifier"

    @IBOutlet weak var machineLearningTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        machineLearningTableView.delegate = self
        machineLearningTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        machineLearningLessons.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = machineLearningTableView.dequeueReusableCell(withIdentifier: machineLearningTableViewCellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = machineLearningLessons[row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == machineLearningLessonsSegueIdentifier, let machineLearningLessonsVC = segue.destination as? MachineLearningLessonsViewController {
            machineLearningLessonsVC.delegate = self
        }
    }
    

}
