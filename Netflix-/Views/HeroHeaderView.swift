//
//  HeroHeaderView.swift
//  Netflix-
//
//  Created by sergio shaon on 7/6/22.
//

import UIKit

class HeroHeaderView: UIView {
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "anya")
        return image
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius =  5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let downloadsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius =  5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        image.frame = bounds
    }
    func layout(){
        addSubview(image)
        addGradiant()
        addSubview(playButton)
        addSubview(downloadsButton)
        //MARK: - add constraints and continue
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 85),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            playButton.widthAnchor.constraint(equalToConstant: 100),
            
            downloadsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -85),
            downloadsButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            downloadsButton.widthAnchor.constraint(equalToConstant: 100)
        
        ])
        
    }
}

extension HeroHeaderView{
    
    func addGradiant(){
        let gradiantLayer = CAGradientLayer()
        gradiantLayer.colors = [
        
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
    
        ]
        gradiantLayer.frame = bounds
        layer.addSublayer(gradiantLayer)
    }
}
