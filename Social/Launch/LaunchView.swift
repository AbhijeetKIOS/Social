//
//  LaunchView.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [Color.purple, Color.blue]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            
            Image("socialWhiteLogo")
                .resizable()
                .scaledToFit()
            // .frame(width: 250, height: 252)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LaunchView()
}
