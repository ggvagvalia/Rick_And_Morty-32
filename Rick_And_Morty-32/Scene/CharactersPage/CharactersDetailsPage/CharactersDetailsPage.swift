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
        ZStack {
            VStack {
                infoView(character: character)
                    .ignoresSafeArea()
                
                // MARK: - Episodes Starred in View
                
                ScrollView {
                    LazyVStack(spacing: 20) {
                        ForEach(charactersDetailedPageViewModel.episodes.indices, id: \.self) { index in
                            let episode = charactersDetailedPageViewModel.episodes[index]
                            CharactersEpisodesView(episode: episode)
                                .padding(.top)
                                .padding(.bottom)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .onAppear {
                    charactersDetailedPageViewModel.fetchEpisodes()
                }
            }
        }
        .background(Color.secondary.opacity(0.1))
        .ignoresSafeArea()
    }
}

private struct infoView: View {
    let character: Characters
    
    var body: some View {
        VStack(alignment: .center) {
            ImageView(imageURL: character.image)
                .frame(width: 200, height: 200)
            VStack {
                HStack {
                    Text("Character Name:")
                        .bold()
                    Text("\(character.name)")
                }
                HStack {
                    Text("Gender:")
                        .bold()
                    Text("\(character.gender)")
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
        }
    }
}


//#Preview {
//    CharactersDetailsPage()
//}
