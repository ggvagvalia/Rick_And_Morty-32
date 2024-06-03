//
//  MainPage.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct MainPage: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                CharactersPage()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Characters")
                    }
                    .tag(0)
                EpisodesPage()
                    .tabItem {
                        Image(systemName: "movieclapper")
                        Text("Episodes")
                    }
                    .tag(1)
                SearchPage()
                    .tabItem {
                        Image(systemName: "sparkle.magnifyingglass")
                        Text("Search")
                    }
                    .tag(2)
            }
        }
    }
}

#Preview {
    MainPage()
}
