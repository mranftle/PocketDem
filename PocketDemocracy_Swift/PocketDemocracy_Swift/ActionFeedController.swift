//
//  ActionFeedController.swift
//  PocketDemocracy_Swift
//
//  Created by Matthew Ranftle on 11/15/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ActionFeedController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var actionList:[Action] = []
    
    override func viewWillAppear(_ animated: Bool) {
        actionList = GlobalVars.action
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "actionCell")
        let action = actionList[indexPath.row]
        
        cell.textLabel!.text = action.title
        cell.detailTextLabel!.text = action.eventDescription
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        if segue.identifier == "showActionDetail" {
//            let detailedVC = segue.destination as! DetailedActionView
//            detailedVC.selectedAction = sender as! Action
//        }
//    }
    
    
}
