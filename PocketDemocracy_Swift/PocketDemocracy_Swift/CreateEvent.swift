//
//  CreateEvent.swift
//  PocketDemocracy_Swift
//
//  Created by Austin Prince on 11/19/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation
import UIKit

class createEventController: UIViewController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
        eventDescription.text = "Insert Event Description"
        eventDescription.textColor = UIColor.lightGray
      
        
    }
    @IBOutlet weak var eventDuration: UITextField!
    @IBOutlet weak var dateSelection: UIDatePicker!
    @IBOutlet weak var eventDescription: UITextView!
    @IBOutlet weak var eventName: UITextField!
    @IBAction func submitPressed(_ sender: Any) {
        let name = eventName.text
        let description = eventDescription.text
        let duration = eventDuration.text
        let date = dateSelection.date

        let newEvent = Action(title: name!, duration: duration!, eventDescription: description!, time:date)
        GlobalVars.searchActions.append(newEvent)
        GlobalVars.currentUser?.actions.append(newEvent)
        self.navigationController?.popViewController(animated: true)
        //self.dismiss(animated: true, completion: nil)
        
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if eventDescription.textColor == UIColor.lightGray {
            eventDescription.text = nil
            eventDescription.textColor = UIColor.black
        }
    }
    
    
}
