//
//  HomeViewController+Extentions.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-17.
//

import UIKit

//UICollectionView Delegate Extention
extension HomeViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetData.results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "planetCollection", for: indexPath) as? SubClassCollectionViewCell) {
            cell.setupTitle(title: planetData.results[indexPath.row].name)
            cell.setupCell(color: .gray)
            cell.setplanetImage(image: UIImage(imageLiteralResourceName: planetData.results[indexPath.row].name))
            return cell
        }
        fatalError("Unable to dequeue subclass cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let nextViewContorller = PlanetViewController()
        nextViewContorller.planetNameString = planetData.results[indexPath.row].name
        nextViewContorller.orbitalPeriodString = planetData.results[indexPath.row].orbital_period
        nextViewContorller.gravityString = planetData.results[indexPath.row].gravity
        
        navigationController?.pushViewController(nextViewContorller, animated: true)
    }
    
    
}
