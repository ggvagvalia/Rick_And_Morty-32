//
//  EpisodesPageModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct EpisodesModel: Decodable, Hashable {
    var results: [Episodes]
}

struct Episodes: Decodable, Hashable {
    var id: Int
    var name: String
//    var air_date: String
    var episode: String
}
