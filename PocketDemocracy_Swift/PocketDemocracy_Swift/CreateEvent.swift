//
//  CreateEvent.swift
//  PocketDemocracy_Swift
//
//  Created by Austin Prince on 11/19/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation
import UIKit

class createEventController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var dateSelection: UIDatePicker!
    @IBOutlet weak var eventDescription: UITextView!
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var eventSwitch: UISwitch!
    @IBOutlet weak var hoursInput: UITextField!
    @IBOutlet weak var minutesInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        eventDescription.text = "Insert Event Description"
        eventDescription.textColor = UIColor.lightGray
        dateSelection.alpha = 0
        eventSwitch.setOn(false, animated: false)
    }
    
    private func getDuration() -> String {
        let hours = hoursInput.text
        let minutes = minutesInput.text
        if (hours == "" && minutes == "") {
            return "Error"
        } else if hours == "" {
            return "\(minutes!) Minutes"
        } else if minutes == "" {
            return "\(hours!) Hours"
        } else {
            return "\(hours!) Hours, \(minutes!) Minutes"
        }
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        let name = eventName.text
        let description = eventDescription.text
        let duration = getDuration()
        let date = dateSelection.date

        let eventWithDate = Action(title: name!, duration: duration, eventDescription: description!, time: date)
        let eventNoDate = Action(title: name!, duration: duration, eventDescription: description!)
        
        let newEvent = (eventSwitch.isOn) ? eventWithDate : eventNoDate
        if name == "" || description == "" || duration == "Error" {
            let alert = UIAlertController(title: "Error", message: "Need to create an event with a name, description, and duration. Please ensure all of these fields are filled out", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            GlobalVars.searchActions.append(newEvent)
            GlobalVars.currentUser?.actions.append(newEvent)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if eventDescription.textColor == UIColor.lightGray {
            eventDescription.text = nil
            eventDescription.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Insert Event Description"
            textView.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        dateSelection.alpha = (eventSwitch.isOn) ? 1 : 0
    }
}
