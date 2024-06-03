//
//  CharactersDetailedPageViewModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI
import NetworkingService

class CharactersDetailedPageViewModel: ObservableObject {
    let networkingEpisodes = NetworkingForEpisodes.shared
    @Published var isLoading = false
    @Published  var episodeURLs: [String]
    @Published var episodes: [[String: Any]] = []
    
    init(episodeURLs: [String]) {
        self.episodeURLs = episodeURLs
    }
    
    func fetchEpisodes() {
        isLoading = true
        for episodeURLString in episodeURLs {
            if let episodeURL = URL(string: episodeURLString) {
                networkingEpisodes.fetchData(urlString: episodeURL) { data in
                    if let data = data {
                        do {
                            guard let episodeDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                                print("Failed to decode episode data")
                                return
                            }
                            DispatchQueue.main.async {
                                self.episodes.append(episodeDictionary)
                            }
                        } catch {
                            print("Error decoding episode data: \(error)")
                        }
                    } else {
                        print("Failed to fetch episode data")
                    }
                }
            }
        }
        isLoading = false
    }
    
}
