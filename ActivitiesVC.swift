//
//  ActivitiesVC.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/12/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit
import Firebase

class ActivitiesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var activitiesTableView: UITableView!
    var activityStore: ActivityStore!
    var selectedRow: Int!
    let fir = Firebase()
    var activitiesRef: FIRDatabaseReference!


    // MARK: - App State
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fir.checkLogin()
        activitiesRef = FIRDatabase.database().reference(withPath: "activities")
        
        let newActivityButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(presentNewActivityVC))
        
        self.navigationItem.rightBarButtonItem = newActivityButton
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showActivityDetail" {
            if let row = activitiesTableView.indexPathForSelectedRow?.row {
                let activity = activityStore.allActivities[row]
                let activityDetailVC = segue.destination as! ActivityDetailVC
                activityDetailVC.activity = activity
            }
        }
    }
    
    func presentNewActivityVC() {
        performSegue(withIdentifier: "showNewActivity", sender: self)
    }
    
    // MARK: - Table
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        cell.textLabel?.text = activityStore.allActivities[indexPath.row].name
        cell.detailTextLabel?.text = activityStore.allActivities[indexPath.row].organizer.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activityStore.count
    }
    

}

