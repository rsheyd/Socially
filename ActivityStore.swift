//
//  ActivityStore.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/19/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class ActivityStore {
    var allActivities = [Activity]()
    var organizers = PeopleStore()
    
    var count: Int {
        return allActivities.count
    }
    
    var sampleActivityNames = ["See Robot Battles","Grab Coffee","Check Out New Bar","Hike Mt. Fuji","Play Laser Tag","Take Improv Class","Go See Hamilton on Broadway","Discuss Politics","Go Out For Drink","Coffee Time"]
    
    init() {
        for _ in 1...15 {
            allActivities.append(createRandomActivity())
        }
    }
    
    func createRandomActivity() -> Activity {
        let randomActivityNameIndex = Int(arc4random_uniform(UInt32(sampleActivityNames.count)))
        let randomActivityName = sampleActivityNames[randomActivityNameIndex]
        
        let randomOrganizerIndex = Int(arc4random_uniform(UInt32(organizers.count)))
        let randomOrganizer = organizers.allPeople[randomOrganizerIndex]
        
        let randomizedActivity = Activity(name: randomActivityName, organizer: randomOrganizer)
        return randomizedActivity
    }
}
