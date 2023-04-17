//
//  SubClassCollectionViewCell.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-12.
//

import UIKit

class SubClassCollectionViewCell:UICollectionViewCell {
    
    lazy var planetNameLabel:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagePlanet:UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    func setupBackground() {
        self.layer.cornerRadius = 10
        self.addSubview(planetNameLabel)
        self.addSubview(imagePlanet)
        
        
        planetNameLabel.translatesAutoresizingMaskIntoConstraints = false
        imagePlanet.translatesAutoresizingMaskIntoConstraints = false
        
        planetNameLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        planetNameLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        planetNameLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        planetNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        imagePlanet.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 10).isActive = true
        imagePlanet.topAnchor.constraint(equalTo: self.topAnchor,constant: 10).isActive = true
        imagePlanet.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -10).isActive = true
        imagePlanet.bottomAnchor.constraint(equalTo: planetNameLabel.topAnchor,constant: 1).isActive = true
    }
    
    func setupTitle(title:String) {
        planetNameLabel.text = title
    }
    
    func setupCell(color:UIColor) {
        self.backgroundColor = color
    }
    
    func setplanetImage(image:UIImage){
        self.imagePlanet.image = image
    }
}
