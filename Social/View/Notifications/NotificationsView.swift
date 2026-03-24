//
//  NotificationsView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 20){
                ForEach(0..<20){ _ in
                    NotificationCell()
                        
                }
            }
            .padding(.horizontal)
            .padding(.top,10)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.white, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.light, for: .navigationBar)
        
       
    }
}

#Preview {
    NotificationsView()
}
