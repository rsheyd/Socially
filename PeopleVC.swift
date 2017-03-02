//
//  PeopleVC.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/12/17.
//  Copyright © 2017 RLabs. All rights reserved.
//
/*
 
 people tab should show a small number in red for number of people using app within 10 miles; it will usually be zero when the app first launches, but that's okay; 
 
 maybe until there's at least 1 person hide tab - no I think it's unnerving for users when an expected tab/button disappears randomly
 instead just display "Sorry, no users of Socially are in your area. Check back later!"
 
 add search bar at the top so you can quickly connect in-app when exchanging contact info with a person
 
 */
import UIKit

class PeopleVC: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var peopleCollectionView: UICollectionView!
    var peopleStore: PeopleStore!
    let peopleDataSource = PeopleDataSource()
    let fir = Firebase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fir.checkLogin()
        
        peopleStore = PeopleStore()
        peopleCollectionView.dataSource = peopleDataSource
        peopleDataSource.people = peopleStore.allPeople
    }
}
