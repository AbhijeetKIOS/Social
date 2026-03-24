//
//  UserStackView.swift
//  Social
//
//  Created by Abhijeet Kumar on 24/03/26.
//

import SwiftUI

struct UserStackView: View{
    let value: Int
    let title: String
    var body: some View{
        VStack{
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            Text(title)
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStackView(value: 1, title: "Post")
}
