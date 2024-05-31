//
//  CharactersPageViewModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI
import NetworkingService

class CharactersPageViewModel: ObservableObject {
    @Published  var characters: [Characters]? = []
    @State private var isLoading = false
    let networking = NetworkingService.shared
    let urlString = "https://rickandmortyapi.com/api/character"
    
    init() {
        loadData()
    }
    
    func loadData() {
        isLoading = true
        networking.fetchCatData(urlString: urlString) { (decodedData: CharactersPageModel?) in
            DispatchQueue.main.async { [weak self] in
                self?.characters = decodedData?.results
                self?.isLoading = false
                
            }
        }
    }
    
}
