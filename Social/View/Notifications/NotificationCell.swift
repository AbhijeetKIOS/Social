//
//  NotificationCell.swift
//  Social
//
//  Created by Abhijeet Kumar on 24/03/26.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage: Bool = false
    var body: some View {
        HStack {
            Image("abhi")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
           
                Text("Abhijeet Kumar")
                .font(.system(size: 14, weight: .semibold)) +
                Text(" Liked your post.")
                .font(.system(size: 15))
            Spacer()
            if showPostImage {
                Image("abhi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    
            } else {
                Button {
    
                } label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(.capsule)
                        .font(.system(size: 14, weight: .semibold))
                        
                }

            }
                    
            
            
        }.padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
