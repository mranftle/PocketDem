//
//  User.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation
import UIKit

class User: NSObject {
    let username: String
    let password: String
    let profPic: UIImage
    var interests: [String]
    var organization:String
    var sources: [String]
    var actions: [Action]
  
    
    public override var description: String {
        return "username: \(username), password: \(password), sources: \(sources)"
    }
    
    init (username: String, password: String, interests: [String], sources:[String], profPicString:String, organization:String, actions:[Action]) {
        self.organization = organization
        self.profPic = UIImage(named: profPicString)!
        self.username = username
        self.password = password
        self.interests = interests
        self.sources = sources
        self.actions = actions
        self.organization = organization
    }
    init(username: String, password: String, interests: [String], sources: [String]) {
        self.username = username
        self.password = password
        self.interests = interests
        self.sources = sources
        self.actions = []
        self.organization = "Unaffiliated"
        self.profPic = UIImage(named: "nopic.jpg")!
    }
    
    convenience init(username: String, password: String) {
        self.init(username: username, password: password, interests: [], sources: [])
    }
    
    convenience init(username: String, password: String, interests: [String], sources: [String], actions: [Action]) {
        self.init(username: username, password: password, interests: interests, sources: sources, profPicString: "nopic.jpg", organization: "Unaffiliated", actions: actions)
    }
    
    convenience init(username: String, password: String, interests: [String], sources: [String], actions: [Action], profPicString: String) {
        self.init(username: username, password: password, interests: interests, sources: sources, profPicString: profPicString, organization: "Unaffiliated", actions: actions)    }
}
