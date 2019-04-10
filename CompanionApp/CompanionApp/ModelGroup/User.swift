//
//  User.swift
//  CompanionApp
//
//  Created by Ariel Andelt on 2019-04-02.
//  Copyright © 2019 Ariel Andelt. All rights reserved.
//

import UIKit

class User: NSObject {
    var id: String?
    var name: String?
    var email: String?
    var profileImageUrl: String?    
    //create a dictionary array for all values in User
    init(dictionary: [String: AnyObject]) {
        self.id = dictionary["id"] as? String
        self.name = dictionary["name"] as? String
        self.email = dictionary["email"] as? String
        self.profileImageUrl = dictionary["profileImageUrl"] as? String
    }
}
