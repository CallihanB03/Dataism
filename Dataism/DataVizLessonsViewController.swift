//
//  DataVizLessonsViewController.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/7/24.
//

import UIKit

class DataVizLessonsViewController: UIViewController {
    var delegate: UIViewController!
    
    
    @IBOutlet weak var plottingTitleLable: UILabel!
    @IBOutlet weak var codeDisplayLabel: UILabel!
    @IBOutlet weak var plotPlaceholderLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = mainBackgroundColor
        
        plottingTitleLable.font = UIFont(name: standardFont, size: 30)
        
        
        
        codeDisplayLabel.text = 
        "from matplotlib import pyplot as plt \n x = [1, 2, 3, 4, 5] \n y = [1, 2, 3, 4, 5] \n plt.plot(data) \n plt.show()"
        
        codeDisplayLabel.backgroundColor = .white
        
        codeDisplayLabel.lineBreakMode = .byTruncatingTail
        codeDisplayLabel.numberOfLines = 0
        plotPlaceholderLabel.text = ""
        plotPlaceholderLabel.backgroundColor = .white
        

    }
    
    


}
