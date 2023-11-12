//
//  Team.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/8/23.
//

import Foundation

struct TeamResponse: Decodable {
    let data : [Team]
}

// any data that is decoded into a Team object will have the following properties
struct Team : Decodable {
    // all the properties listed must map onto a field of the JSON response
    let id: String
    let name: String
    let stadium: String
    
    private enum CodingKeys: String, CodingKey {
        // specify the mappings between JSON keys and struct properties
        case id = "id"
        case name = "name"
        case stadium = "stadium"
    }
    
}
