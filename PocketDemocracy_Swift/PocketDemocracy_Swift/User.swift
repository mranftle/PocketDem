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
    let preferences: [String]
    
    init(username: String, password: String, preferences: [String]) {
        self.username = username
        self.password = password
        self.preferences = preferences
    }
    
    convenience init(username: String, password: String) {
        self.init(username: username, password: password, preferences: [])
    }
}
