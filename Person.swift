//
//  Person.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/12/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class Person: NSObject {
    let id: String
    let name: String
    let email: String
    let age: Int
    let gender: String
    let profilePhoto: UIImage?
    
    init(name: String, email: String, age: Int, gender: String, profilePhoto: UIImage?) {
        self.id = String(arc4random())
        self.name = name
        self.email = email
        self.age = age
        self.gender = gender
        self.profilePhoto = profilePhoto
        
        super.init()
    }
    
    convenience init(name: String, email: String) {
        let age = Int(arc4random_uniform(60) + 18)
        let randomGender = Int(arc4random_uniform(1))
        let possibleGenders = ["Male","Female"]
        let gender = possibleGenders[randomGender]
        
        self.init(name: name, email: email, age: age, gender: gender, profilePhoto: UIImage(named: "Roman"))
    }
}
