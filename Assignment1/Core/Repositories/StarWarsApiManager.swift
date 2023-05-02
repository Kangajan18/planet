//
//  StarWarsApiManager.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-13.
//

import Foundation



class StarWarsApiManager {
    
    let starwarsUrl:String = "https://swapi.dev/api/planets"
        
    func fetchAllPlanets(completion:@escaping(_ data:StarWarsData)->()) {
        if let url = URL(string: starwarsUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, urlResponse, error in
                guard error == nil else {
                    print("Error \(String(describing: error?.localizedDescription))")
                    return
                }
                if let safeData = data {
                    if let planetData = self.parseJSON(data:safeData) {
                        
                        //call completionhandler async
                        DispatchQueue.main.async {
                            completion(planetData)
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
