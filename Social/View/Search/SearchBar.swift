//
//  SearchBar.swift
//  Social
//
//  Created by Abhijeet Kumar on 27/02/26.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    var body: some View {
        HStack{
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .onTapGesture {
                    isEditing = true
                }
            if isEditing{
                Button {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                } label: {
                    Text("Cancel").foregroundColor(.primary)
                }
                .padding(.trailing,8)
                .transition(.move(edge: .trailing))
                .animation(.easeInOut, value: isEditing)
                
            }
        }
    }
}

#Preview {
    SearchBar(text: .constant("Search..."), isEditing: .constant(true))
}
