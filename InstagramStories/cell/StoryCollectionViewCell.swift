//
//  StoryCollectionViewCell.swift
//  InstagramStories
//
//  Created by User on 25.02.25.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 2
        imageView.contentMode = .scaleAspectFill
        
    }
}

struct StoryModel {
  
    var image:String
    var name: String

    
    
}
