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

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedArticle.title
        bodyLabel.text = selectedArticle.body
        dateLabel.text = selectedArticle.getDateString()
        bodyLabel.sizeToFit()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        var contentRect = CGRect.zero
        for view: UIView in scrollView.subviews {
            contentRect = contentRect.union(view.frame)
        }
        scrollView.contentSize = contentRect.size

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedArticle.actions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectActionCell", for: indexPath) as! SelectionActionTableViewCell
        let action = selectedArticle.actions[indexPath.row]
        cell.action = action
        cell.actionTitle.text = action.title
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
