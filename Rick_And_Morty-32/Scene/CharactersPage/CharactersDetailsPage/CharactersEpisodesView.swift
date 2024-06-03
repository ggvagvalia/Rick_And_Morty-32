//
//  CharactersEpisodesView.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct CharactersEpisodesView: View {
    var episode: [String: Any]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(episode["episode"] as? String ?? "")")
                    .font(.system(size: 19))
                    .bold()
                
                Spacer()
                
                Text("\(episode["air_date"] as? String ?? "")")
                    .font(.system(size: 13))
            }
            Spacer()
            
            Text("\(episode["name"] as? String ?? "")")
                .font(.system(size: 16))
        }
        .frame(height: 20)
    }
}

//#Preview {
//    CharactersEpisodesView()
//}
