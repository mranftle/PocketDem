//
//  AddInterestsToActionViewController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 12/17/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class AddInterestCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
}

class AddInterestsToActionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    var interests: [String] = []
    var selectedInterests: [String] = []

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "selectedInterestCell", for: indexPath) as! AddInterestCollectionCell
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
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
        GlobalVars.actionSelectedInterests = selectedInterests
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
