//
//  RootView.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI

struct RootView: View {
    
    @State private var isLoading = true
    
    var body: some View {
        
        if isLoading {
            LaunchView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isLoading = false
                    }
                }
        } else {
            MainTabView()
        }
    }
}

#Preview {
    RootView()
}
