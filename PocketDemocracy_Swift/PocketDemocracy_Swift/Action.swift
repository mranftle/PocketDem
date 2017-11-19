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
    let time:Date
    let isEvent:Bool
    
    init(title: String, duration: String, eventDescription: String) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.time = Date()
        self.isEvent = false
    }
    init(title: String, duration: String, eventDescription: String, time:Date) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.time = time
        self.isEvent = true
        
    }
}
