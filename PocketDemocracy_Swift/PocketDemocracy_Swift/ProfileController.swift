//
//  ProfileController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ProfileController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var selectedLabel: UILabel!
    @IBOutlet weak var editInterests: UIButton!
    @IBOutlet weak var editSources: UIButton!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var eventsTable: UITableView!
    @IBOutlet weak var profImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var organizationLabel: UILabel!
    @IBOutlet weak var createEventButton: UIButton!
    
    var user: User?
    var newsArticles: [String] = []
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTable.delegate = self
        eventsTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        user = GlobalVars.currentUser
        nameLabel.text = user?.username
        profImage.contentMode = .scaleAspectFit
        profImage.image = user?.profPic
        organizationLabel.text = user?.organization
        
        segmentedController.selectedSegmentIndex = 0
        
        if user?.organization == "Unaffiliated" {
            createEventButton.alpha = 0
        }
        updateSelectedLabels()
        eventsTable.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedController.selectedSegmentIndex {
        case 0:
            return (user?.actions.count)!
        case 1:
            return (user?.sources.count)!
        default:
            return (user?.interests.count)!
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "eventsCell")
        switch segmentedController.selectedSegmentIndex {
        case 0:
            let event = user?.actions[indexPath.row]
            cell.textLabel!.text = event?.title
        case 1:
            let source = user?.sources[indexPath.row]
            cell.textLabel!.text = source
        default:
            let interest = user?.interests[indexPath.row]
            cell.textLabel!.text = interest
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if segmentedController.selectedSegmentIndex == 0 {
            self.performSegue(withIdentifier: "showActionDetails", sender: GlobalVars.currentUser?.actions[indexPath.row])
        }
    }
    
    private func updateSelectedLabels() {
        var labelText: String
        switch segmentedController.selectedSegmentIndex {
        case 0:
            labelText = "Events"
            createEventButton.isHidden = false
            editSources.isHidden = true
            editInterests.isHidden = true
        case 1:
            labelText = "Sources"
            createEventButton.isHidden = true
            editSources.isHidden = false
            editInterests.isHidden = true
        default:
            labelText = "Interests"
            createEventButton.isHidden = true
            editSources.isHidden = true
            editInterests.isHidden = false
        }
        selectedLabel.text = labelText
    }
    
    @IBAction func segmentedControllerSelect(_ sender: Any) {
        updateSelectedLabels()
        eventsTable.reloadData()
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        GlobalVars.currentUser = nil
        let loginController = self.storyboard!.instantiateViewController(withIdentifier: "LoginControllerID")
        self.tabBarController?.selectedIndex = 0
        self.present(loginController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showActionDetails" {
            let detailedVC = segue.destination as! SearchedActionController
            detailedVC.action = sender as! Action
        }
        else if segue.identifier == "showEditSources" {
            let editPreferencesVC = segue.destination as! EditPreferencesController
            editPreferencesVC.editSources = true
            editPreferencesVC.selectedSources = (GlobalVars.currentUser?.sources)!
        }
        else if segue.identifier == "showEditInterests" {
            let editPreferencesVC = segue.destination as! EditPreferencesController
            editPreferencesVC.editSources = false
            editPreferencesVC.selectedInterests = (GlobalVars.currentUser?.interests)!
        }
        
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
