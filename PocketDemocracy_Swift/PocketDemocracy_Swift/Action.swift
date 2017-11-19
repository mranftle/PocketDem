//
//  Action.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation

class Action: NSObject {
    let title: String
    let duration: String
    let eventDescription: String
    let issues: [String]
    let time: Date
    let isEvent: Bool
    
    init(title: String, duration: String, eventDescription: String) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = []
        self.time = Date()
        self.isEvent = false
    }

    init(title: String, duration: String, eventDescription: String, issues: [String]) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = issues
        self.time = Date()
        self.isEvent = false
    }
    
    init(title: String, duration: String, eventDescription: String, time: Date) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = []
        self.time = time
        self.isEvent = true
    }
    
    
    override func isEqual(_ object: Any?) -> Bool {
        if let object = object as? Action {
            return self.title == object.title
        } else {
            return false
        }
    }
}
