//
//  UserCell.swift
//  Social
//
//  Created by Abhijeet Kumar on 11/03/26.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("abhi")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(.circle)
            
            // Vstack -> username, fullname
            
            VStack(alignment: .leading){
                Text("@abhi")
                    .font(.system(size: 14, weight: .semibold))
                Text("Abhijeet Kumar")
                    .font(.system(size: 14))
            }
            Spacer()
        }
        
    }
}

#Preview {
    UserCell()
}
