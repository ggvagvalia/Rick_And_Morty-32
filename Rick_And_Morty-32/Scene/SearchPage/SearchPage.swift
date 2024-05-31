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
            //            LinearGradient(
            //                colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.2), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.1)],
            //                startPoint: .topLeading,
            //                endPoint: .bottomTrailing)
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
                        if selectedPicker == 0 {
                            List(filteredCharacters, id: \.id) { character in
                                CharactersListView(name: character.name, image: character.image)
                            }
                        } else {
                            List(filteredEpisodes, id: \.id) { episode in
                                EpisodesPageGridView(name: episode.name , episode: episode.episode)
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
