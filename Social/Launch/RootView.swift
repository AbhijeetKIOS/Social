//
//  RootView.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI

struct RootView: View {
    
    @State private var isLoading = true
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        if isLoading {
            LaunchView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isLoading = false
                    }
                }
        } else {
            Group{
                if viewModel.userSession == nil{
                    LoginView()
                }else{
                    MainTabView()
                }
            }
        }
    }
}

#Preview {
    RootView()
}
