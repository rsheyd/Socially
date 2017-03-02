//
//  PersonCell.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/21/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class PersonCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePictureView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    func updatePictureWith(profilePicture: UIImage?) {
        if let pictureToDisplay = profilePicture {
            spinner.stopAnimating()
            profilePictureView.image = pictureToDisplay
        } else {
            spinner.startAnimating()
            profilePictureView.image = nil
        }
    }
    
    func updateCellWith(name: String?) {
        if let nameToDisplay = name {
            spinner.stopAnimating()
            nameLabel.text = nameToDisplay
        } else {
            spinner.startAnimating()
            nameLabel.text = nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updatePictureWith(profilePicture: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        updatePictureWith(profilePicture: nil)
    }
}
