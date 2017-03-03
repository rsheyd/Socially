//
//  PersonStore.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/19/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class PeopleStore {
    var allPeople = [Person]()
    var count: Int {
        return allPeople.count
    }
    
    var sampleFirstNames = ["John","Barry","Archer","Bob","Lana","Kelly","Crystal","Joann"]
    var sampleLastNames = ["Smith","Razowski","Belcher","Hadley","Sterling","Yeh","Kushner","Ling"]
    var sampleEmails = ["coolguy32@gmail.com","robotman@aol.com","secretagent@yahoo.com","burgers4everyone@hotmail.com","hawtlady39@gmail.com","thegif@haha.com","lastoneout@company.com","randomperson@linkedin.com"]
    
    init() {
        for _ in 1...20 {
            allPeople.append(createRandomPerson())
        }
    }
    
    func createRandomPerson() -> Person {
        let randomFirstNameIndex = Int(arc4random_uniform(UInt32(sampleFirstNames.count)))
        let randomLastNameIndex = Int(arc4random_uniform(UInt32(sampleLastNames.count)))
        let randomEmailIndex = Int(arc4random_uniform(UInt32(sampleEmails.count)))
        let randomName = sampleFirstNames[randomFirstNameIndex] + " " + sampleLastNames[randomLastNameIndex]
        let randomEmail = sampleEmails[randomEmailIndex]
        
        let randomizedPerson = Person(name: randomName, email: randomEmail)
        return randomizedPerson
    }
}
