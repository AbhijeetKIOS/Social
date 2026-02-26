//
//  FeedView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 32){
                ForEach(0..<20){ _ in
                    // feed cell
                    FeedCell()
                }
            }.padding(.top)
            
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.white, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.light, for: .navigationBar)
    }
}

#Preview {
    FeedView()
}
