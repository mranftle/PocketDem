//
//  DetailedArticleView.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ActionTableCell: UITableViewCell {
    
    var action: Action!
    
    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var actionDescription: UITextView!
    
    public func updateButtonLabel(result: Bool) {
        if result {
            actionButton.titleLabel?.text = "Remove Action"
            actionButton.titleLabel?.textColor = UIColor.red
        } else {
            actionButton.titleLabel?.text = "Add Action"
            actionButton.titleLabel?.textColor = UIColor.blue
        }
    }
    
    @IBAction func editAction(_ sender: UIButton) {
        let result = GlobalVars.currentUser?.actions.contains(action)
        if result! {
            let index = GlobalVars.currentUser?.actions.index(of: self.action)
            GlobalVars.currentUser?.actions.remove(at: index!)
        } else {
            GlobalVars.currentUser?.actions.append(action)
        }
        //updateButtonLabel(result: result!)
        print("actions = \(String(describing: GlobalVars.currentUser?.actions))")
    }
}

class DetailedArticleView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedArticle: Article!

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var bodyText: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bodyText.isUserInteractionEnabled = true
        bodyText.isEditable = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title =  selectedArticle.title
        authorLabel.text = "By \(selectedArticle.author)"
        dateLabel.text = selectedArticle.getDateString()
        bodyText.text = selectedArticle.body
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArticle.actions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "actionCell", for: indexPath) as! ActionTableCell
        let action = selectedArticle.actions[indexPath.row]
        cell.action = action
        cell.actionTitle.text = action.title
        cell.actionDescription.text = action.eventDescription
        
//        let result = GlobalVars.currentUser?.actions.contains(action)
//        cell.updateButtonLabel(result: result!)
        
        return cell
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
