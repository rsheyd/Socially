//
//  Activity.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/12/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

/*

 sponsored events for app revenue: concert tickets, restaurant openings, amusement venues, comedy shows
 
*/

import UIKit

class Activity: NSObject {
    let id: String
    let name: String
    let maxParticipants: Int
    let organizer: Person
    let startDateTime: Date
    let endDateTime: Date
    let location: String
    let summary: String?
    
    init(name: String, organizer: Person, maxParticipants: Int, startDateTime: Date, endDateTime: Date, location: String, summary: String?) {
        self.id = String(arc4random())
        self.name = name
        self.organizer = organizer
        self.maxParticipants = maxParticipants
        self.startDateTime = startDateTime
        self.endDateTime = endDateTime
        self.location = location
        self.summary = summary
        
        super.init()
    }
    
    convenience init(name: String, organizer: Person) {
        let maxParticipants = Int(arc4random_uniform(20) + 2)
        let randomWithinOneWeek = Double(arc4random_uniform(1234567))
        let startDateTime = Date(timeIntervalSinceNow: randomWithinOneWeek)
        let randomWithinOneDay = Double(arc4random_uniform(123456))
        let endDateTime = Date(timeIntervalSinceNow: randomWithinOneWeek + randomWithinOneDay)
        let locations = ["Sunnyvale","Palo Alto","San Jose","San Francisco","Mountain View"]
        let randomLocationIndex = Int(arc4random_uniform(UInt32(locations.count)))
        let location = locations[randomLocationIndex]
        
        self.init(name: name, organizer: organizer, maxParticipants: maxParticipants, startDateTime: startDateTime, endDateTime: endDateTime, location: location, summary: nil)
    }
}
