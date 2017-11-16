//
//  ActionFeedController.swift
//  PocketDemocracy_Swift
//
//  Created by Matthew Ranftle on 11/15/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class ActionFeedController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var actionList:[Action] = []
    
    override func viewWillAppear(_ animated: Bool) {
        actionList = GlobalVars.actions
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actionList.count
    }
    
    // Taken from http://stackoverflow.com/questions/31314412/how-to-resize-image-in-swift
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: "actionCell")
        let action = actionList[indexPath.row]
        
        cell.textLabel!.text = action.title
        cell.detailTextLabel!.text = action.eventDescription
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showActionDetail", sender: actionList[indexPath.row])
    }
    
    private func fetchImage(path: String) -> UIImage? {
        var image: UIImage?
        guard let url = URL(string: path) else { return nil }
        do {
            let data = try Data(contentsOf: url)
            image = UIImage(data: data)!
        } catch {
            print("Image not found")
        }
        return image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showActionDetail" {
            let detailedVC = segue.destination as! DetailedActionView
            detailedVC.selectedAction = sender as! Action
        }
    }
    
    
}
