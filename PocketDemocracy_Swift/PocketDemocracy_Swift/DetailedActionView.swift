//
//  DetailedActionView.swift
//  PocketDemocracy_Swift
//
//  Created by Matthew Ranftle on 11/15/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class DetailedActionView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedAction: Action!
    
    @IBOutlet weak var eventDescription: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var bodyText: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bodyText.isUserInteractionEnabled = true
        bodyText.isEditable = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title =  selectedAction.title
        eventDescription.text = selectedAction.description
        durationLabel.text = selectedAction.duration
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

