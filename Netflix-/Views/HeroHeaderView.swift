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
        image.image = UIImage(named: "ironman")
        return image
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
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
        //MARK: - add constraints and continue
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
