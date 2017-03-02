//
//  PeopleDataSource.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/21/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class PeopleDataSource: NSObject, UICollectionViewDataSource {
    
    var people = [Person]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCell", for: indexPath) as! PersonCell
        
        let person = people[indexPath.row]
        cell.updatePictureWith(profilePicture: person.profilePhoto)
        cell.updateCellWith(name: person.name)
        
        return cell
    }
    
}
