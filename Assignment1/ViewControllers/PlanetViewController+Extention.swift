//
//  PlanetViewController+Extention.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-18.
//

import UIKit



extension PlanetViewController {
    
    func loadBackground() {
        view.addSubview(planetImage)
        view.addSubview(planetNameLabel)
        view.addSubview(orbitalPeriodLabel)
        view.addSubview(gravityLabel)
        
        planetNameLabel.translatesAutoresizingMaskIntoConstraints = false
        planetImage.translatesAutoresizingMaskIntoConstraints = false
        orbitalPeriodLabel.translatesAutoresizingMaskIntoConstraints = false
        gravityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        if let planetName = planetNameString,let orbital = orbitalPeriodString,let gravity = gravityString {
            planetImage.image = UIImage(named: planetName)
            planetNameLabel.text = "Planet Name: \(planetName)"
            orbitalPeriodLabel.text = "Orbital Period: \(orbital)"
            gravityLabel.text = "Gravity: \(gravity)"
        }
        
        NSLayoutConstraint.activate([
            
            //planetImage constrain
            planetImage.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor,constant: 10),
            planetImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20),
            planetImage.heightAnchor.constraint(equalToConstant: 150),
            planetImage.widthAnchor.constraint(equalToConstant: 150),
            
            //planetName constrain
            planetNameLabel.leftAnchor.constraint(equalTo: planetImage.rightAnchor,constant: 30),
            planetNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20),
            planetNameLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,constant: -10),
            planetNameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            //orbitalPriodLabel constrain
            orbitalPeriodLabel.leftAnchor.constraint(equalTo: planetImage.rightAnchor,constant: 30),
            orbitalPeriodLabel.topAnchor.constraint(equalTo: planetNameLabel.bottomAnchor,constant: 20),
            orbitalPeriodLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,constant: -20),
            orbitalPeriodLabel.heightAnchor.constraint(equalToConstant: 30),
            
            //gravitylabel constrain
            gravityLabel.leftAnchor.constraint(equalTo: planetImage.rightAnchor,constant: 30),
            gravityLabel.topAnchor.constraint(equalTo: orbitalPeriodLabel.bottomAnchor,constant: 20),
            gravityLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,constant: -20),
            gravityLabel.heightAnchor.constraint(equalToConstant: 30)
            
        ])
        
    }
    
}
