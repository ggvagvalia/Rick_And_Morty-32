//
//  EpisodesPageViewModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI
import NetworkingService

class EpisodesPageViewModel: ObservableObject {
    @Published var episodesModel: [Episodes]? = []
    @State private var isLoading = false
    let networking = NetworkingService.shared
    let urlString = "https://rickandmortyapi.com/api/episode"
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        isLoading = true
        networking.fetchCatData(urlString: urlString) { (decodedEpisodes: EpisodesModel?) in
            DispatchQueue.main.async { [weak self] in
                self?.episodesModel = decodedEpisodes?.results
                self?.isLoading = false
            }
        }
    }
}
