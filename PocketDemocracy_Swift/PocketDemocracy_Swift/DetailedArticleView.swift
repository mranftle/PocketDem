//
//  DetailedArticleView.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

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
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "actionCell")
        let action = selectedArticle.actions[indexPath.row]
        
        cell.textLabel!.text = action.title
        cell.detailTextLabel!.text = action.duration
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using seque.destrinationViewController
//        // Pass the selected object to the new view controller
//        if segue.identifier == "showActionDetail" {
////            let detailedVC = segue.destination as! DetailedActionView
//            detailedVC.selectedAction = sender as! Action
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
