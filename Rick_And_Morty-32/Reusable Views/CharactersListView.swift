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
//        ZStack {
            VStack(alignment: .center, spacing: 8) {
                ImageView(imageURL: image)
//                Image("Example")
//                    .resizable()
                    .frame(width: 170, height: 185)
                    .cornerRadius(20)
                Spacer()
                Text(name)
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 20)
            }
//            .padding()
//            .padding(.vertical, 8)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                   .background(Color.secondary.opacity(0.1))
                   .cornerRadius(10)
//        }
    }
}

//#Preview {
//    CharactersListView(name: <#String#>, image: <#String#>)
//}
