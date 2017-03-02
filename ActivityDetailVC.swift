//
//  ActivityDetailVC.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/20/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class ActivityDetailVC: UIViewController {
    
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var organizerLabel: UILabel!
    @IBOutlet weak var startDateTimeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var maxParticipantsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var activity: Activity! {
        didSet {
            navigationItem.title = activity.name
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let activity = self.activity {
            activityNameLabel.text = activity.name
            organizerLabel.text = "Organizer: \(activity.organizer.name)"
            startDateTimeLabel.text = "Starts: \(activity.startDateTime.description)"
            durationLabel.text = "Duration: \(Int(activity.endDateTime.timeIntervalSince(activity.startDateTime)/60/60)) Hours"
            maxParticipantsLabel.text = "Max Participants: \(activity.maxParticipants)"
            locationLabel.text = "Location: \(activity.location)"
            summaryLabel.text = activity.summary
        }
    }
}
