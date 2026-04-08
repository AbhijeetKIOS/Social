//
//  AuthViewModel.swift
//  Social
//
//  Created by Abhijeet Kumar on 08/04/26.
//

import SwiftUI
import Firebase
import FirebaseAuth
import Combine
class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }


    func login(){
        print("login")
    }
    
    func register(withEmail email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Successfully registered user.....")
        }
        
    }
    
    func signOut(){
        
    }
    
    func resetPassword(){
        
    }
    func fetchUser(){
        
    }
}
