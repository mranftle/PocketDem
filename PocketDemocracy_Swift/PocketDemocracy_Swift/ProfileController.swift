//
//  ProfileController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ProfileController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func createEvents(_ sender: Any) {
        
    }
    @IBAction func segmentedControllerSelect(_ sender: Any) {
        switch segmentedController.selectedSegmentIndex {
        case 0:
            eventView.isHidden = false
        default:
            eventView.isHidden = true
        }
    }
    @IBOutlet weak var segmentedController: UISegmentedControl!
    var newsArticles: [String] = []
    
    
    @IBOutlet weak var eventView: UIView!
    
//    @IBAction func segmentClick(_ sender: Any) {
    @IBOutlet weak var eventsTable: UITableView!
    
   
    var user: User?
   
    
    @IBOutlet weak var profImage: UIImageView!
    @IBOutlet weak var createEvent: UIButton!

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var organizationLabel: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTable.delegate = self
        eventsTable.dataSource = self
        user = GlobalVars.currentUser
        nameLabel.text = user?.username
        profImage.contentMode = .scaleAspectFit
        profImage.image = user?.profPic
       
    
        organizationLabel.text = user?.organization
        if user?.organization == "Unaffiliated" {
            segmentedController.isHidden = true
        }
       
       
        
        // Do any additional setup after loading the view.
    }
  


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (user?.actions.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "eventsCell")
        let article = user?.actions[indexPath.row]
        cell.textLabel!.text = article?.title
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        GlobalVars.currentUser = nil
       
        let loginController = self.storyboard!.instantiateViewController(withIdentifier: "LoginControllerID")

        self.present(loginController, animated: true, completion: nil)

        
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
