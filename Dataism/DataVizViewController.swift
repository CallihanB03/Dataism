//
//  DataVizViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class DataVizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var delegate: UIViewController!
    let dataVizTopicsTableViewCellIdentifier = "DataVizTopicsTableViewCellIdentifier"
    @IBOutlet weak var dataVizTopicsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataVizTopicsTableView.delegate = self
        dataVizTopicsTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataVizTopics.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataVizTopicsTableView.dequeueReusableCell(withIdentifier: dataVizTopicsTableViewCellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = dataVizTopics[row]
        return cell
    }
    

}
