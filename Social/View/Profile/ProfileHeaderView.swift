//
//  ProfileHeaderView.swift
//  Social
//
//  Created by Abhijeet Kumar on 24/03/26.
//

import SwiftUI

struct ProfileHeaderView: View {
    // updated code , who missed on ProfileHeaderView branch
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("abhi")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                HStack(spacing: 16){
                    UserStackView(value: 22, title: "Post")
                    UserStackView(value: 2, title: "Followers")
                    UserStackView(value: 4, title: "Following")
                }.padding(.trailing,32)
            }
            Text("Abhijeet Kumar")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("IOS Mobile Appilication Developer")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            HStack{
                Spacer()
                ProfileActionBitton()
                Spacer()

            }.padding(.top)
        }
    }
}
#Preview {
    ProfileHeaderView()
}
