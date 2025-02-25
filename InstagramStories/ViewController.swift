//
//  ViewController.swift
//  InstagramStories
//
//  Created by User on 25.02.25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionViewStories: UICollectionView!
    
    var storyList:[StoryModel] = [
      StoryModel(image: "barcelona", name: "Barcelona"),
      StoryModel(image: "islandiya", name: "Ispaniya"),
      StoryModel(image: "italiya", name: "Italiya"),
      StoryModel(image: "yunanistan", name: "Yunanistan"),
      StoryModel(image: "barcelona", name: "Barcelona"),
      StoryModel(image: "islandiya", name: "Ispaniya"),
      StoryModel(image: "italiya", name: "Italiya"),
      StoryModel(image: "yunanistan", name: "Yunanistan"),
      StoryModel(image: "barcelona", name: "Barcelona"),
      StoryModel(image: "islandiya", name: "Ispaniya"),
      StoryModel(image: "italiya", name: "Italiya"),
      StoryModel(image: "yunanistan", name: "Yunanistan")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewStories.dataSource = self
        collectionViewStories.delegate = self
        
       
    }
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell
        let item = storyList[indexPath.row]
        cell?.imageView.image = UIImage(named: item.image)
        cell?.nameLabel.text = item.name
        
        
        return cell ?? StoryCollectionViewCell()
    }

}







