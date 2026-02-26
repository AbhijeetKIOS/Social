//
//  FeedCell.swift
//  Social
//
//  Created by Abhijeet Kumar on 24/02/26.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            //userInfo
            HStack{
                Image("abhi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Abhijeet Kumar")
                    .font(.system(size: 14,weight: .semibold))
                }
            .padding([.leading, .bottom], 8)
            // post Image
            Image("abhi")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            //actions buttons
            HStack(spacing: 16){
                Button {
                    Text("check")
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                Button {
                    Text("check")
                } label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                Button {
                    Text("check")
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }

            }
            .padding(.leading, 4)
            .foregroundStyle(.black)
            
            //Likes..
            Text("20 likes")
                .font(.system(size: 14,weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
              
            
            //caption
            
            HStack(spacing: 16){
                Text("Anandeep").font(.system(size: 14,weight: .semibold))  +
                Text(" looks fresh today")
                    .font(.system(size: 15))
            }.padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .padding(.leading,8)
                .padding(.top, -2)
            
        }
    }
}

#Preview {
    FeedCell()
}
