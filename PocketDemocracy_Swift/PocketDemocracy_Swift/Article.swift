//
//  Article.swift
//  PocketDemocracy
//
//  Created by Zach Polsky on 11/7/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation
import UIKit

class Article: NSObject {
    let title: String
    let author: String
    let source: String
    let cellImage: UIImage?
    let detailedImage: UIImage?
    let summary: String
    let body: String
    let timeStamp: Date
    let actions: [Action]
    let issues: [String]
    
    public override var description: String {
        return "title: \(title), author: \(author), source: \(source)"
    }
    
    init(title: String, author: String, source: String, cellImage: UIImage?, detailedImage: UIImage?, summary: String, body: String, timeStamp: Date, actions: [Action], issues: [String]) {
        self.title = title
        self.author = author
        self.source = source
        self.cellImage = cellImage
        self.detailedImage = detailedImage
        self.summary = summary
        self.body = body
        self.timeStamp = timeStamp
        self.actions = actions
        self.issues = issues
    }
    
    public func getDateString() -> String {
        // Taken from http://stackoverflow.com/questions/40648284/converting-a-unix-timestamp-into-date-as-string-swift
        let dateFormat = DateFormatter()
        dateFormat.timeZone = TimeZone(abbreviation: "CST")
        dateFormat.locale = NSLocale.current
        dateFormat.dateFormat = "MMMM d, YYYY"
        return dateFormat.string(from: timeStamp)
    }
    
}

