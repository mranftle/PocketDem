//
//  User.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/14/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation

class User: NSObject {
    let username: String
    let password: String
    var interests: [String]
    var preferences: [String]
    var actions: [Action]
    
    public override var description: String {
        return "username: \(username), password: \(password), preferences: \(preferences)"
    }
    
    init(username: String, password: String, interests: [String], preferences: [String]) {
        self.username = username
        self.password = password
        self.interests = interests
        self.preferences = preferences
        self.actions = []
    }
    
    convenience init(username: String, password: String) {
        self.init(username: username, password: password, interests: [], preferences: [])
    }
}
