//
//  SearchController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/16/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class SearchController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var segController: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var actions: [Action] = []
    var issues: [String] = []
    var currentIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        actions = GlobalVars.searchActions
        actions = actions.sorted(by: { $0.dateCreated > $1.dateCreated })
        issues = GlobalVars.interests
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "searchCell")
        if segController.selectedSegmentIndex == 0 {
            let action = actions[indexPath.row]
            cell.textLabel?.text = action.title
            var detailedLabel = "Issues: "
            detailedLabel.append(action.getIssueString())
            cell.detailTextLabel?.text = detailedLabel
        } else {
            let issue = issues[indexPath.row]
            cell.textLabel?.text = issue
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentIndex = indexPath.row
        if segController.selectedSegmentIndex == 0 {
            self.performSegue(withIdentifier: "showSearchedAction", sender: actions[indexPath.row])
        } else {
            self.performSegue(withIdentifier: "showSearchedIssue", sender: issues[indexPath.row])
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (segController.selectedSegmentIndex == 0) ? actions.count : issues.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    private func updateTableBySearch(searchText: String) {
        if segController.selectedSegmentIndex == 0 {
            if searchText == "" {
                actions = GlobalVars.searchActions
            } else {
                actions = actions.filter( {$0.title.contains(searchText)
                    || $0.getIssueString().contains(searchText)} )
            }
            actions = actions.sorted(by: { $0.dateCreated > $1.dateCreated })
        } else {
            if searchText == "" {
                issues = GlobalVars.interests
            } else {
                issues = issues.filter( {$0.contains(searchText)} )
            }
        }
        tableView.reloadData()
    }
    
    @IBAction func pressedSegController(_ sender: UISegmentedControl) {
        let searchText = searchBar.text ?? ""
        if segController.selectedSegmentIndex == 0 {
            searchBar.placeholder = "Search actions by name or type (Politics, Environment, etc.)"
        } else {
            searchBar.placeholder = "Search articles by type (Politics, Environment, etc.)"
        }
        updateTableBySearch(searchText: searchText)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        updateTableBySearch(searchText: searchText)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showSelectedAction" {
            return segController.selectedSegmentIndex == 0
        } else if identifier == "showSelectedIssue" {
            return segController.selectedSegmentIndex != 0
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSearchedAction" {
            let vc = segue.destination as! SearchedActionController
            vc.action = sender as? Action
        }
        else if segue.identifier == "showSearchedIssue" {
            let vc = segue.destination as! SearchedIssueController
            vc.issue = issues[currentIndex]
            
            var searchedArticles: [Article] = []
            for article in GlobalVars.newsArticles {
                if article.issues.contains(vc.issue) {
                    searchedArticles.append(article)
                }
            }
            vc.newsArticles = searchedArticles
        }
    }

}
