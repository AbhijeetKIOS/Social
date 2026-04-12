//
//  LoginView.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color.purple, Color.blue]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                VStack {
                    Image("socialWhiteLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .foregroundStyle(Color.white)
                    //email Field
                    VStack(spacing: 20){
                        CustomTextField(
                            text: $email,
                            placeholder: Text("Email"),
                            imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        
                        //password field
                        CustomSecureField(
                            text: $password,
                            placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        
                    }
                    HStack{
                        Spacer()
                        Button {
                        } label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .bold))
                                .foregroundStyle(.white)
                                .padding(.top)
                                .padding(.trailing,28)
                            
                        }
                    }
                    
                    Button {
                        viewModel.login(withEmail: email, password: password)
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(.capsule)
                            .padding()
                    }
                    Spacer()
                    
                    NavigationLink {
                        RegisterView()
                    }
                    label: {
                        HStack{
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14,weight: .semibold))
                            
                        }
                    }.foregroundStyle(.white)
                    
                }
                
            }
        }
        
        
        
    }
}

#Preview {
    LoginView()
}
