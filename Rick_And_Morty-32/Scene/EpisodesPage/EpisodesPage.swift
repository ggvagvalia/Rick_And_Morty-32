//
//  EpisodesPage.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct EpisodesPage: View {
    @State private var columns = [GridItem(.adaptive(minimum: 175), spacing: 5), GridItem(.adaptive(minimum: 175), spacing: 5)]
    @State private var isLoading = false
    @ObservedObject var episodesPage = EpisodesPageViewModel()
    
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.2), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.1)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            VStack {
                Text("Episodes")
                    .font(.system(size: 32))
                    .bold()
                    .safeAreaPadding(.top, 55)
                if isLoading {
                    ProgressView("Loading...")
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(episodesPage.episodesModel ?? [], id: \.id) { episode in
                                EpisodesPageGridView(name: episode.name, episode: episode.episode)
                            }
                        }
                    }
                }
                
            }
        }
        .ignoresSafeArea()
        .onAppear {
            episodesPage.fetchData()
        }
    }
}

#Preview {
    EpisodesPage()
}
