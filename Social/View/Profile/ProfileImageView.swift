//
//  ProfileImageView.swift
//  Social
//
//  Created by Abhijeet Kumar on 10/04/26.
//
import SwiftUI
import Kingfisher

struct ProfileImageView: View {
    
    let imageUrl: String?
    let image: Image?
    let onTap: (() -> Void)?
    
    var body: some View {
        Group {
            if let image {
                image
                    .resizable()
                    .scaledToFill()
                
            } else if let imageUrl {
                KFImage(URL(string: imageUrl))
                    .resizable()
                    .scaledToFill()
                
            } else {
                Image(systemName: "person.crop.circle.badge.plus")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.gray)
            }
        }
        .clipShape(Circle())
        .overlay {
            Circle().stroke(Color.white, lineWidth: 3)
        }
        .onTapGesture {
            onTap?()
        }
    }
}
