//
//  ReminderCardsController.swift
//  IslamicGoals
//
//  Created by Hamza Lakhani on 2018-04-30.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

class ReminderCardsController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    let islamicGoalName = ["12 Rakaat Sunnah Prayer", "Last 2 verses of Surah Bakarah Before Sleeping", "Send Blessing on the Prophet (pbuh)"]
    
    let hadithImage = [UIImage(named: "Hadith1"), UIImage(named:"hadith2"), UIImage(named: "hadith3")]
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return islamicGoalName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let reminderCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReminderCard", for: indexPath) as! ReminderCardCell
        
        reminderCell.islamicGoalName.text = islamicGoalName[indexPath.row]
        reminderCell.hadithImage.image = hadithImage[indexPath.row]
        
        
        //This creates the shadows and modifies the cards a little bit
        reminderCell.contentView.layer.cornerRadius = 4.0
        reminderCell.contentView.layer.borderWidth = 1.0
        reminderCell.contentView.layer.borderColor = UIColor.clear.cgColor
        reminderCell.contentView.layer.masksToBounds = false
        reminderCell.layer.shadowColor = UIColor.gray.cgColor
        reminderCell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        reminderCell.layer.shadowRadius = 4.0
        reminderCell.layer.shadowOpacity = 1.0
        reminderCell.layer.masksToBounds = false
        reminderCell.layer.shadowPath = UIBezierPath(roundedRect: reminderCell.bounds, cornerRadius: reminderCell.contentView.layer.cornerRadius).cgPath

        
        return reminderCell
    }

}
