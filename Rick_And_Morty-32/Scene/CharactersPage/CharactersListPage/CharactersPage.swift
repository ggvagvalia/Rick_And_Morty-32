//
//  CharactersPage.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct CharactersPage: View {
    @State private var columns = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var charactersViewModel = CharactersPageViewModel()
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Characters")
                    .font(.system(size: 25))
                    .padding(.top, 1)
                    .padding(.bottom, -10)
                    .bold()
                
                NavigationStack {
                    if isLoading {
                        ProgressView("Loading")
                    } else {
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 5) {
                                ForEach(charactersViewModel.characters ?? [], id: \.id) { characters in
                                    NavigationLink(value: characters) {
                                        CharactersListView(name: characters.name, image: characters.image)
                                            .padding()
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Characters.self) { character in
                            CharactersDetailsPage(character: character)
                        }
                    }
                }
                .foregroundColor(.black)
                
                .onAppear {
                    charactersViewModel.loadData()
                }
            }
        }
        .background(Color.secondary.opacity(0.1))
    }
}

#Preview {
    CharactersPage()
}
