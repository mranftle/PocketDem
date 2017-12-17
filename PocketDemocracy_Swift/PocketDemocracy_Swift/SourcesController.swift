//
//  SourcesController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class SourceCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
}

class SourcesController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    var userInfo: (String, String, String, [String]) = ("", "", "", [])
    var sources: [String] = []
    var selectedSources: [String] = []

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sources = GlobalVars.sources
        collectionView.reloadData()
        let alert = UIAlertController(title: "Add Sources", message: "Select from sources you're interested in reading by tapping on the box corresponding to that news source. Selections can be deselected by tapping on the box again", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sources.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let source = sources[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sourceCell", for: indexPath) as! SourceCollectionCell
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        cell.titleLabel.text = source
        cell.backgroundColor = (selectedSources.contains(source)) ? UIColor.green : UIColor.white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let source = sources[indexPath.row]
        if selectedSources.contains(source) {
            selectedSources = selectedSources.filter( {$0 != source} )
        } else {
            selectedSources.append(source)
        }
        collectionView.reloadData()
    }
        
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            sources = GlobalVars.sources
        } else {
            sources = sources.filter( {$0.contains(searchText)} )
        }
        collectionView.reloadData()
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if selectedSources.count > 0 {
            let newUser = (userInfo.2 != "") ? User(username: userInfo.0, password: userInfo.1, interests: userInfo.3, sources: selectedSources, profPicString: "nopic.jpg", organization: userInfo.2, actions: []) : User(username: userInfo.0, password: userInfo.1, interests: userInfo.3, sources: selectedSources)

            GlobalVars.users.append(newUser)
            GlobalVars.currentUser = newUser
            self.dismiss(animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Need to add at least 1 source to your preferences", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
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
