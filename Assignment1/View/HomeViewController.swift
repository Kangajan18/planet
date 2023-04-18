//
//  ViewController.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-11.
//

import UIKit

class HomeViewController: UIViewController{

    //define UIElements
    var myCollectionView: UICollectionView?
    
    //define properties
    var planetData = StarWarsData(results: [])
    
    //create instance for Class
    var starWarsApiManager:StarWarsApiManager = StarWarsApiManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        myCollectionView?.delegate = self
        myCollectionView?.dataSource = self
        myCollectionView?.register(SubClassCollectionViewCell.self, forCellWithReuseIdentifier: "planetCollection")
        myCollectionView?.alwaysBounceVertical = true
        myCollectionView?.backgroundColor = .black
        
        starWarsApiManager.delegate = self
        
        //@escaping completion function (after data fetch from api successfully)
        starWarsApiManager.fetchAllPlanets {
            self.myCollectionView?.reloadData()
            print("Success")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func loadView() {
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        layout.itemSize = CGSize(width: 150, height: 150)
        layout.scrollDirection = .vertical
        
        myCollectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
        self.view = myCollectionView
    }
}

