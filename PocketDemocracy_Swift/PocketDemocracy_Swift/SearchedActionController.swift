//
//  SearchedActionController.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/17/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class SearchedActionController: UIViewController {
    
    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var updateActionButton: UIButton!
    
    var action: Action!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = action.title
        actionTitle.text = action.title
        durationLabel.text = "Duration: \(action.duration)"
        descriptionText.text = action.eventDescription
        
        var buttonText = ""
        
        if (GlobalVars.currentUser?.actions.contains(action))! {
            buttonText = "Remove Action"
            updateActionButton.setTitleColor(UIColor.red, for: .normal)
        } else {
            buttonText = "Add Action"
        }
        
        updateActionButton.setTitle(buttonText, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionPressed(_ sender: Any) {
        if (GlobalVars.currentUser?.actions.contains(action))! {
            let index = GlobalVars.currentUser?.actions.index(of: action)
            GlobalVars.currentUser?.actions.remove(at: index!)
        } else {
            GlobalVars.currentUser?.actions.append(action)
        }
        self.navigationController?.popViewController(animated: true)
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
