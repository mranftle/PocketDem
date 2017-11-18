//
//  ProfileController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ProfileController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var newsArticles: [String] = []
    
    
    
    @IBAction func segmentClick(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            <#code#>
        default:
            <#code#>
        }
    }
   
    var user: User?
    var sizingCell: TagCell?
    
    @IBOutlet weak var profImage: UIImageView!
    @IBOutlet weak var createEvent: UIButton!
    @IBOutlet weak var flowLayout: FlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var eventsTable: UITableView!
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
        collectionView.delegate = self
        collectionView.dataSource = self
        nameLabel.text = user?.username
        profImage.contentMode = .scaleAspectFit
        profImage.image = user?.profPic
        print ("\(user?.interests)")
        print ("\(user?.actions)")
    
        organizationLabel.text = user?.organization
//        let cellNib = UINib(nibName: "TagCell", bundle: nil)
//        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "TagCell")
//        self.collectionView.backgroundColor = UIColor.clear
//        self.sizingCell = (cellNib.instantiate(withOwner: nil, options: nil) as NSArray).firstObject as! TagCell?
//
//        self.flowLayout.sectionInset = UIEdgeInsetsMake(8.0, 8.0, 8.0, 8.0)

       
        
//        nameLabel.text! =
        
        
        
        
        // Do any additional setup after loading the view.
    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        print ("\(String(describing: user?.interests.count))")
//        return (user?.interests.count)!
//
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        self.configureCell(cell: self.sizingCell!, forIndexPath: indexPath as NSIndexPath)
//        return self.sizingCell!.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
//    }
//
//
//    func configureCell(cell: TagCell, forIndexPath indexPath: NSIndexPath) {
//        var TAGS = user?.interests
//        let tag = TAGS![indexPath.row]
//        cell.tagName.text = tag
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCell", for: indexPath) as! TagCell
//        self.configureCell(cell: cell, forIndexPath: indexPath as NSIndexPath)
//        return cell
//
//
//    }
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
        
         print("user = \(user!.username)")
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        GlobalVars.currentUser = nil
        let loginController = self.storyboard!.instantiateViewController(withIdentifier: "LoginControllerID")
        let interestsController = self.storyboard!.instantiateViewController(withIdentifier:"InterestControllerID")
        self.present(loginController, animated: true, completion: nil)
        self.present(interestsController, animated:true, completion:nil)
        
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
