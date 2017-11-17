//
//  InterestsController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class InterestCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
}

class InterestsController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
        
    var userPass: (String, String) = ("", "")
    var interests: [String] = []
    var selectedInterests: [String] = []
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        interests = GlobalVars.interests
        collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let interest = interests[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "interestCell", for: indexPath) as! InterestCollectionCell
        cell.titleLabel.text = interest
        cell.backgroundColor = (selectedInterests.contains(interest)) ? UIColor.orange : UIColor.white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let interest = interests[indexPath.row]
        if selectedInterests.contains(interest) {
            selectedInterests = selectedInterests.filter( {$0 != interest} )
        } else {
            selectedInterests.append(interest)
        }
        collectionView.reloadData()
    }
        
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            interests = GlobalVars.interests
        } else {
            interests = interests.filter( {$0.contains(searchText)} )
        }
        collectionView.reloadData()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showSources" {
            if selectedInterests.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Need to add at least 1 interest to your preferences", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSources" {
            let vc = segue.destination as! SourcesController
            vc.userInfo = (userPass.0, userPass.1, selectedInterests)
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
