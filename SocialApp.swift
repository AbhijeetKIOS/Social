//
//  SocialApp.swift
//  Social
//
//  Created by Abhijeet Kumar on 21/02/26.
//

import SwiftUI
import FirebaseAuth
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct SocialApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate  
    var body: some Scene {
        WindowGroup {
            // MainTabView()
            RootView().environmentObject(AuthViewModel())
            //LoginView().environmentObject(AuthViewModel())
        }
    }
}
