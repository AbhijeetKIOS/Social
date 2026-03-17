//
//  SearchView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode: Bool = false
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            ZStack{
                if inSearchMode || !searchText.isEmpty {
                    UserListView()
                }else{
                    PostGridView()
                }
            }
            
        }
        .animation(.easeInOut, value: inSearchMode)
    }
}

#Preview {
    SearchView()
}
