//
//  PageCell.swift
//  IslamicGoals
//
//  Created by Hamza Lakhani on 2018-05-02.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

let iGImageView : UIImageView = {
    let imageView = UIImageView(image: #imageLiteral(resourceName: "IGlogo"))
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    return imageView
    
}()
class PageCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("innit coder has not been implemented")
    }
    
    private func setupLayout() {
        let topImageContainerView = UIView()
        
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.addSubview(iGImageView)
        iGImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        iGImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        iGImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        iGImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true

        //        introductionTextView.topAnchor.constraint(equalTo: iGImageView.bottomAnchor, constant: 50).isActive = true
        //        introductionTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        //        //right anchor always a negative value
        //        introductionTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        //        introductionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        
    }
}
