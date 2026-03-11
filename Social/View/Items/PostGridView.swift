//
//  PostGridView.swift
//  Social
//
//  Created by Abhijeet Kumar on 11/03/26.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    var body: some View {
        GeometryReader { proxy in
            LazyVGrid(columns: items) {
                ForEach(0..<10) { index in
                    Image("abhi")
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width / 3, height: proxy.size.width / 3)
                        .clipped()
                }
            }
        }
    }
}

#Preview {
    PostGridView()
}
