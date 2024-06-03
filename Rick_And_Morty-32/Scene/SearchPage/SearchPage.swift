//
//  SearchPage.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct SearchPage: View {
    @State private var isLoading = false
    @ObservedObject var characters = CharactersPageViewModel()
    @ObservedObject var episodes = EpisodesPageViewModel()
    @State private var selectedPicker = 0
    @State private var searchedText = ""
    let pickerOptions = ["Characters", "Episodes"]
    
    var filteredCharacters: [Characters] {
        return characters.characters?.filter { $0.name.localizedCaseInsensitiveContains(searchedText)} ?? []
    }
    var filteredEpisodes: [Episodes] {
        return episodes.episodesModel?.filter { $0.name.localizedCaseInsensitiveContains(searchedText)} ?? []
    }
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    Picker("Search", selection: $selectedPicker) {
                        ForEach(0..<pickerOptions.count, id: \.self) { index in
                            Text(self.pickerOptions[index]).tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if isLoading {
                        ProgressView("Loading...")
                    } else {
                        ScrollView {
                            if selectedPicker == 0 {
                                ForEach(filteredCharacters, id: \.id) { character in
                                    CharactersListView(name: character.name, image: character.image)
                                }
                            } else {
                                ForEach(filteredEpisodes, id: \.id) { episode in
                                    EpisodesPageGridView(name: episode.name , episode: episode.episode)
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle("Search")
                .searchable(text: $searchedText, placement: .automatic, prompt: selectedPicker == 0 ? "Searc Characters" : "Search Episodes")
                .onChange(of: selectedPicker) {
                    searchedText = ""
                }
            }
        }
    }
}

#Preview {
    SearchPage()
}
