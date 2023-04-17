//
//  Results.swift
//  Assignment1
//
//  Created by kangajan kuganathan on 2023-04-12.
//

import Foundation

struct StarWarsData:Decodable {
    var results:[StareWars]
}

struct StareWars:Decodable {
    var name:String
    var rotation_period:String
    var orbital_period:String
    var diameter:String
    var climate:String
    var gravity:String
    var terrain:String
    var surface_water:String
    var population:String
}
