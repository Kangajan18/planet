//
//  StareWarsModel.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-05-02.
//

import Foundation

protocol StareWarsInputs{
    func fetchData()
}
protocol StareWarsOutputs{
    func dataLoaded(data:StarWarsData)
}

class StareWarsModel:StareWarsInputs {
    
    var delegate: StareWarsOutputs?
    
    let stareWarsApiManager = StarWarsApiManager()
    
    func fetchData() {
        stareWarsApiManager.fetchAllPlanets {
            self.delegate?.dataLoaded(data: $0)
        }
    }
}
