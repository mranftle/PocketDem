//
//  DetailedActionView.swift
//  PocketDemocracy_Swift
//
//  Created by Matthew Ranftle on 11/15/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class DetailedActionView: UIViewController {


    var selectedAction: Action!
    
    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var saveActionButton: UIButton!
    @IBOutlet weak var eventDescription: UITextView!

//    @IBOutlet weak var eventDescription: UILabel!
//    @IBOutlet weak var durationLabel: UILabel!
//    @IBOutlet weak var bodyText: UITextView!
//    @IBOutlet weak var tableView: UITableView!

//    @IBOutlet weak var eventDescription: UITextView!
    
    public func updateButtonLabel(result: Bool) {
        if(result) {
            saveActionButton.titleLabel?.text = "Remove Action"
            saveActionButton.titleLabel?.textColor = UIColor.red
            
        } else {
            saveActionButton.titleLabel?.text = "Add Action"
            saveActionButton.titleLabel?.textColor = UIColor.blue
        }
    }
    
    @IBAction func editAction( sender: UIButton) {
        let result = GlobalVars.currentUser?.actions.contains(selectedAction)
        if result! {
            let index = GlobalVars.currentUser?.actions.index(of:self.selectedAction)
            GlobalVars.currentUser?.actions.remove(at:index!)
        }
        else {
            GlobalVars.currentUser?.actions.append(selectedAction)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        bodyText.isUserInteractionEnabled = true
//        bodyText.isEditable = false

    }

    override func viewWillAppear(_ animated: Bool) {
//        self.title =  selectedAction.title
        eventDescription.text = selectedAction.eventDescription
//        durationLabel.text = selectedAction.duration
//        tableView.reloadData()
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


