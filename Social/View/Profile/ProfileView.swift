//
//  ProfileView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView()
                PostGridView()
            }
        }
    }
}

#Preview {
    ProfileView()
}
