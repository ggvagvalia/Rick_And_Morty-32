//
//  CharactersListView.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import SwiftUI

struct CharactersListView: View {
    var name: String
    
    var body: some View {
//        ZStack {
            VStack(alignment: .leading) {
//                Image("Example")
//                    .resizable()
//                    .frame(width: 160, height: 180)
//                    .cornerRadius(20)
                Text(name)
                    .font(.title3)
                    .bold()
            }
            .padding(.vertical, 8)
                   .background(Color.secondary.opacity(0.1))
                   .cornerRadius(10)
//        }
    }
}
//
//#Preview {
//    CharactersListView()
//}
