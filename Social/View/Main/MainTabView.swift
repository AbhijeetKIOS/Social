//
//  MainTabView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            
            NavigationStack {
                FeedView()
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Feed", systemImage: "house")
            }
            
            NavigationStack {
                SearchView()
                    .navigationTitle("Search")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
            
            NavigationStack {
                UploadView()
                    .navigationTitle("Post")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Post", systemImage: "plus.square")
            }
            
            NavigationStack {
                NotificationsView()
                    .navigationTitle("Notifications")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Notifications", systemImage: "heart")
            }
            
            NavigationStack {
                ProfileView()
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
