//
//  CharactersPageModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import Foundation

//struct CharactersPageModel: Hashable, Decodable  {
//
//    let results: [Characters]
//    
//    struct Characters: Hashable, Decodable {
//        let id: Int
//        let name: String
//        let status: String
//        let species: String
//        let gender: String
//        let origin: Origin
//        let image: String
//        let episodes: [String]
//        
//        struct Origin: Hashable, Decodable {
//            let name: String
//        }
//    }
//}

struct CharactersPageModel: Hashable, Decodable  {

    let results: [Characters]
    

}

struct Characters: Hashable, Decodable {
    let id: Int
    let name: String
//    let status: String
//    let species: String
    let gender: String
//    let origin: Origin
//    let image: String
//    let episodes: [String]
//    
//    struct Origin: Hashable, Decodable {
//        let name: String
//    }
}





//
//
//struct CharactersPageModel: Decodable, Hashable {
//    let id: Int
//    let name: String
//    let status: String
//    let species: String
//    let type: String
//    let gender: String
//    let origin: Location
//    let location: Location
//    let image: String
//    let episode: [String]
//    let url: String
//    let created: String
//}
//
//struct Location: Decodable, Hashable {
//    let name: String
//    let url: String
//}
