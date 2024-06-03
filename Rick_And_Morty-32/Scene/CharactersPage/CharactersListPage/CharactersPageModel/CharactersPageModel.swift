//
//  CharactersPageModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import Foundation

struct CharactersPageModel: Hashable, Decodable  {
    let results: [Characters]
}

struct Characters: Hashable, Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: Origin
    let image: String
    let episode: [String]
    
    struct Origin: Hashable, Decodable {
        let name: String
    }
}
