//
//  UserListView.swift
//  Social
//
//  Created by Abhijeet Kumar on 11/03/26.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(){
                ForEach(1..<120) { index in
                    UserCell()
                        .padding(.leading)
                }
            }
        }
    }
}

#Preview {
    UserListView()
}
