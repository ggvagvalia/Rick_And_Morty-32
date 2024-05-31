//
//  EpisodesPageGridView.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct EpisodesPageGridView: View {
    var name: String
    //    var airDate: String
        var episode: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .bold()
                Text(episode)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .frame(width: 175, height: 175)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

            .padding(.vertical, 8)
            .background(Color.secondary.opacity(0.1))
            .clipShape(Circle())
        }
//        .foregroundColor(Color.gray.opacity(0.3))

    }

}

//#Preview {
//    EpisodesPageGridView()
//}
