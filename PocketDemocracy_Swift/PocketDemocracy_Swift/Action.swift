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
    let dateCreated: Date
    
    public override var description: String {
        return "title = \(title)"
    }
    
    init(title: String, duration: String, eventDescription: String) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = []
        self.time = Date()
        self.isEvent = false
        self.dateCreated = Date()
    }

    init(title: String, duration: String, eventDescription: String, issues: [String]) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = issues
        self.time = Date()
        self.isEvent = false
        self.dateCreated = Date()
    }
    
    init(title: String, duration: String, eventDescription: String, time: Date) {
        self.title = title
        self.duration = duration
        self.eventDescription = eventDescription
        self.issues = []
        self.time = time
        self.isEvent = true
        self.dateCreated = Date()
    }
    
    func getIssueString() -> String {
        var issueText = ""
        for issue in self.issues {
            issueText.append("\(issue), ")
        }
        return (issueText.count < 2) ? "" : String(issueText.prefix(issueText.count - 2))
    }
    
    public func getDateString() -> String {
        // Taken from http://stackoverflow.com/questions/40648284/converting-a-unix-timestamp-into-date-as-string-swift
        let dateFormat = DateFormatter()
        dateFormat.timeZone = TimeZone(abbreviation: "CST")
        dateFormat.locale = NSLocale.current
        dateFormat.dateFormat = "MMMM d, h:mm a"
        dateFormat.amSymbol = "AM"
        dateFormat.pmSymbol = "PM"
        return dateFormat.string(from: self.time)
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let object = object as? Action {
            return self.title == object.title
        } else {
            return false
        }
    }
}
