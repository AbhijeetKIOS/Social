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
                    UserStackView()
                    UserStackView()
                    UserStackView()
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
                Spacer()

            }.padding(.top)
        }
    }
}

struct UserStackView: View{
    var body: some View{
        VStack{
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            Text("Followers")
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    ProfileHeaderView()
}
