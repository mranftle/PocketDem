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
    
    init(title: String, duration: String, eventDescription: String) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
    }
}
