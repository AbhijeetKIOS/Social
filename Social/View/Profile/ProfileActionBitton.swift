//
//  ProfileActionBitton.swift
//  Social
//
//  Created by Abhijeet Kumar on 24/03/26.
//

import SwiftUI

struct ProfileActionBitton: View {
    var isCurrentUser:Bool = false
    var isFollowed:Bool = true
    var body: some View {
        
        if isCurrentUser{
            Button {
            } label: {
                Text("Edit Profile")
                    .font(.system(size: 14,weight: .semibold))
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1)
                    }
            }
        } else {
            HStack {
                Button {
                } label: {
                    Text(isFollowed ? "Following" :"Follow")
                        .font(.system(size: 14,weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundStyle(isFollowed ?.black : .white)
                        .background(isFollowed ? Color.white: Color.blue)
                        
                        .overlay {
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: isFollowed ? 1: 0)
                        }
                }.cornerRadius(3)
                Button {
                } label: {
                    Text("Message")
                        .font(.system(size: 14,weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundStyle(.black)
                        .background(Color.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        }
                }.cornerRadius(3)
            }
        }
        
        
    }
}

#Preview {
    ProfileActionBitton()
}
