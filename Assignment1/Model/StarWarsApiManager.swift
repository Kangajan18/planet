//
//  StarWarsApiManager.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-13.
//

import Foundation

protocol StarWarsApiManagerDelegate {
    func didUpdatePlanet(planet:StarWarsData)
}

class StarWarsApiManager {
    
    let starwarsUrl:String = "https://swapi.dev/api/planets"
    
    var delegate:StarWarsApiManagerDelegate?
    
    func fetchAllPlanets(completion:@escaping()->()) {
        let urlString:String = starwarsUrl
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, urlResponse, error in
                guard error == nil else {
                    print("Error \(String(describing: error?.localizedDescription))")
                    return
                }
                if let safeData = data {
                    if let planetData = self.parseJSON(data:safeData) {
                        self.delegate?.didUpdatePlanet(planet: planetData)
                        
                        //call completionhandler async
                        DispatchQueue.main.async {
                            completion()
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(data:Data) -> StarWarsData?  {
        
        let decoder = JSONDecoder()
        do{
            let decoderedData = try decoder.decode(StarWarsData.self, from: data)
            
            return decoderedData
            
        }catch {
            print(error)
            return nil
        }
    }
}
