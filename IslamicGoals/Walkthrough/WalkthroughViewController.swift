//
//  WalkthroughViewController.swift
//  IslamicGoals
//
//  Created by Hamza Lakhani on 2018-04-30.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {

    let iGImageView : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "IGlogo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView

    }()
    
    let introductionTextView : UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Welcome to Islamic Goals", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\nHelping and reminding you of forgotten Sunnahs to help you implement them daily", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13), NSAttributedStringKey.foregroundColor: UIColor.gray]))
        textView.attributedText = attributedText

//        textView.text = "Welcome to Islamic Goals"
//        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false

        return textView
    }()
    //encsapsulated so outside classes cant intefere
    private  let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    private  let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)

        return button
    }()
    
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage  = 0
        pc.numberOfPages  = 4
        pc.currentPageIndicatorTintColor = .green
        pc.pageIndicatorTintColor = .gray
        return pc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.addSubview(iGImageView)
        view.addSubview(introductionTextView)
        setupBottomContols()
        setupLayout()
        
    }
    override open var shouldAutorotate: Bool {
        return false
    }
    
    
    

private func setupLayout() {
    
//    let topImageContainerView = UIView()
//    topImageContainerView.backgroundColor = .blue
//    view.addSubview(topImageContainerView)
//    topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    iGImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    iGImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    iGImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    iGImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    
    //textview
    introductionTextView.topAnchor.constraint(equalTo: iGImageView.bottomAnchor, constant: 50).isActive = true
    introductionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
    //right anchor always a negative value
    introductionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
    introductionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

    
}
    
    fileprivate func setupBottomContols(){
//        view.addSubview(previousButton)
//        previousButton.backgroundColor = .red
//        previousButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
        
//        let greenView = UIView()
//        greenView.backgroundColor = .green
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
            
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)

            
            ])

    }


}
