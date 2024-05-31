//
//  CharactersDetailsPage.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct CharactersDetailsPage: View {
    let character: Characters
    @ObservedObject var charactersDetailedPageViewModel: CharactersDetailedPageViewModel
    @State private var isLoading = false
    
    init(character: Characters) {
        self.character = character
        self.charactersDetailedPageViewModel = CharactersDetailedPageViewModel(episodeURLs: character.episode)
    }
    
    var body: some View {
        // MARK: - Detailed Info View
        VStack {
            infoView(character: character)
        }
        .ignoresSafeArea()
        Spacer()
        
        // MARK: - Episodes Starred in View
        List {
            ForEach(charactersDetailedPageViewModel.episodes.indices, id: \.self) { index in
                let episode = charactersDetailedPageViewModel.episodes[index]
                CharactersEpisodesView(episode: episode)
                    .navigationTitle("Starred In")
            }
            .padding()
        }
        .listStyle(.insetGrouped)
        .onAppear {
            charactersDetailedPageViewModel.fetchEpisodes()
        }
    }
}

private struct infoView: View {
    let character: Characters
    
    var body: some View {
        VStack(alignment: .leading) {
            ImageView(imageURL: character.image)
            
                .frame(width: 300, height: 270)
            HStack {
                Text("Character Name:")
                    .bold()
                Text("\(character.name)")
            }
            HStack {
                Text("Status:")
                    .bold()
                Text("\(character.status)")
            }
            HStack {
                Text("Species:")
                    .bold()
                Text("\(character.species)")
            }
            HStack {
                Text("Origin:")
                    .bold()
                Text("\(character.origin.name)")
            }
        }
        .frame(width: 300, height: 320)
        
    }
}


//#Preview {
//    CharactersDetailsPage()
//}
