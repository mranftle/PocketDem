//
//  EditPreferencesController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 12/8/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class EditPreferencesController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var editSources: Bool = true
    
    var sources: [String] = []
    var selectedSources: [String] = []
    
    var interests: [String] = []
    var selectedInterests: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.backAction(sender:)))
        self.navigationItem.leftBarButtonItem = newBackButton
    }
    
    @objc func backAction(sender: UIBarButtonItem) {
        if (editSources && selectedSources.count > 0) || (!editSources && selectedInterests.count > 0) {
            self.navigationController?.popViewController(animated: true)
        } else {
            let message = (editSources) ? "Need to have at least 1 source in your preferences." : "Need to have at least 1 interest in your preferences."
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sources = GlobalVars.sources
        interests = GlobalVars.interests
        searchBar.placeholder = (editSources) ? "Search for news sources" : "Search for interests"
        collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (editSources) ? sources.count : interests.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sourceCell", for: indexPath) as! SourceCollectionCell
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        if editSources {
            let source = sources[indexPath.row]
            cell.titleLabel.text = source
            cell.backgroundColor = (selectedSources.contains(source)) ? UIColor.green : UIColor.white
        } else {
            let interest = interests[indexPath.row]
            cell.titleLabel.text = interest
            cell.backgroundColor = (selectedInterests.contains(interest)) ? UIColor.orange : UIColor.white
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if editSources {
            let source = sources[indexPath.row]
            if selectedSources.contains(source) {
                selectedSources = selectedSources.filter( {$0 != source} )
            } else {
                selectedSources.append(source)
            }
            GlobalVars.currentUser?.sources = selectedSources
        } else {
            let interest = interests[indexPath.row]
            if selectedInterests.contains(interest) {
                selectedInterests = selectedInterests.filter( {$0 != interest} )
            } else {
                selectedInterests.append(interest)
            }
            GlobalVars.currentUser?.interests = selectedInterests
        }
        collectionView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if editSources {
            if searchText == "" {
                sources = GlobalVars.sources
            } else {
                sources = sources.filter( {$0.contains(searchText)} )
            }
        } else {
            if searchText == "" {
                interests = GlobalVars.interests
            } else {
                interests = interests.filter( {$0.contains(searchText)} )
            }
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
