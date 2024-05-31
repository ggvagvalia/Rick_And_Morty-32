//
//  CharactersPageViewModel.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI
import NetworkingService

class CharactersPageViewModel: ObservableObject {
    let networking = NetworkingService.shared
    @Published  var characters: [Characters]? = []
    
    //    var charactersPageModel: [CharactersPageModel]? = []
    let urlString = "https://rickandmortyapi.com/api/character"
    //    let urlString = "https://rickandmortyapi.com/api/character/1,2,3"
    @State private var isLoading = false
    
    //    
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
