//
//  PlanetViewController.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-18.
//

import UIKit


class PlanetViewController: UIViewController{
    
    
    //define uiElements
    lazy var planetNameLabel:UILabel = {
        var pName = UILabel()
        pName.textColor = .white
        pName.numberOfLines = 0
        return pName
    }()
    lazy var planetImage:UIImageView = {
        var pImage = UIImageView()
        pImage.layer.cornerRadius = 10
        pImage.backgroundColor = .gray
        return pImage
    }()
    lazy var orbitalPeriodLabel:UILabel = {
        var orbitalLabel = UILabel()
        orbitalLabel.textColor = .white
        orbitalLabel.numberOfLines = 0
        return orbitalLabel
    }()
    
    lazy var gravityLabel:UILabel = {
        var gLabel = UILabel()
        gLabel.textColor = .white
        orbitalPeriodLabel.numberOfLines = 0
        return gLabel
    }()
    
    //define properties
    var planetNameString:String?
    var orbitalPeriodString:String?
    var gravityString:String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationbar configuration
        navigationController?.isNavigationBarHidden = false
        
        //view configuration
        view.backgroundColor = .black
        
        //loadBackground
        loadBackground()
    }
    
    
}
