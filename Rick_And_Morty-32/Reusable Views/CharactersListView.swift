//
//  CharactersListView.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct CharactersListView: View {
    var name: String
    var image: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ImageView(imageURL: image)
                .frame(width: 170, height: 185)
            Spacer()
            Text(name)
                .font(.title3)
                .bold()
                .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.secondary.opacity(0.1))
        .cornerRadius(20)
    }
}

//#Preview {
//    CharactersListView()
//}
