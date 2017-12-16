//
//  ArticleViewController.swift
//  PocketDemocracy_Swift
//
//  Created by Glizela Taino on 11/17/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var selectedArticle: Article!
    var actionIndex = -1

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = selectedArticle.title
        bodyLabel.text = selectedArticle.body
        dateLabel.text = selectedArticle.getDateString()
        bodyLabel.sizeToFit()
        
        var contentRect = CGRect.zero
        for view: UIView in scrollView.subviews {
            contentRect = contentRect.union(view.frame)
        }
        scrollView.contentSize = contentRect.size
        imageView.image = selectedArticle.detailedImage
        tableView.reloadData()
        
        actionIndex = -1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArticle.actions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectActionCell", for: indexPath) as! SelectionActionTableViewCell
        let action = selectedArticle.actions[indexPath.row]
        cell.action = action
        cell.actionTitle.text = action.title
        cell.durationLabel.text = "Duration: \(action.duration)"
        if (GlobalVars.currentUser?.actions.contains(action))! {
            cell.added = true
            cell.checkButton.setImage(UIImage(named: "check.png"), for: .normal)
        } else {
            cell.added = false
            cell.checkButton.setImage(UIImage(named: "uncheck.png"), for: .normal)
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        actionIndex = indexPath.row
        self.performSegue(withIdentifier: "showNewsActionDetails", sender: selectedArticle.actions[indexPath.row])
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showNewsActionDetails" {
            if actionIndex == -1 {
                return false
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNewsActionDetails" {
            let detailedVC = segue.destination as! SearchedActionController
            detailedVC.action = sender as! Action
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    



}
