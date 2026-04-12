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
import FirebaseFirestore
import Supabase
import UIKit
class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    static var shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String,
               password: String){
        Auth.auth().signIn(withEmail: email, password: password){result,error in
            if let error = error{
                print("Debug: Login failed\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Lgin successfully")
        }
    }
    func register(
        withEmail email: String,
        password: String,
        username: String,
        fullname: String,
        image: UIImage?){
            Auth.auth().createUser(withEmail: email, password: password) {
                result,
                error in
                if let error = error{
                    print(error.localizedDescription)
                    return
                }
                guard let user = result?.user else { return }
                self.userSession = user
                let uid = user.uid
                // move to async context
                Task{
                    do{
                        var imageURL: String = ""
                        //upload image to supabse
                        if let image = image,
                           let data = image.jpegData(compressionQuality: 0.7) {
                            imageURL = try await ImageUploader()
                                .uploadProfileImage(
                                    userId: uid,
                                    imageData: data
                                )
                            print("✅ Image uploaded:", imageURL)
                        }
                        
                        // Save user Data in firestore..
                        let userData: [String: Any] = [
                            "uid": uid,
                            "email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageURL
                        ]
                        try await Firestore
                            .firestore()
                            .collection("users")
                            .document(uid)
                            .setData(userData)
                        print("✅ User saved in Firestore")
                        print("Successfully registered user.....")
                        self.userSession = user
                        
                    } catch{
                        print("❌ Upload error:", error.localizedDescription)
                    }
                }
                
                
            }
            
        }
    
    func signOut(){
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword(){
        
    }
    func fetchUser(){
        
    }
}
