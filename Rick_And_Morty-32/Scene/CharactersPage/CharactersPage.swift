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
    
    
    var body: some View {
        
        VStack {
            Text("Characters")
                .font(.system(size: 30))
                .bold()
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(charactersViewModel.characters ?? [], id: \.self) { characters in
                        CharactersListView(name: characters.name)
                            .padding()
                    }
                }
                .padding()
                .background(Color.blue)
            }
            
        }
        
        .onAppear {
            charactersViewModel.loadData()
            if let characters = charactersViewModel.characters {
                print("Number of characters: \(characters.count)") // Print the count of characters
                for character in characters {
                    print("Character Name: \(character.name)")
                }
            }
        }
        
    }
    
}

//private struct CardView: View {
//    var number: Int
//    var body: some View {
//        Text("\(number) - cardview number")
//            .background(.blue)
//    }
//}

#Preview {
    CharactersPage()
}
