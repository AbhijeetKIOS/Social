//
//  RegisterView.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI

struct RegisterView: View {
    @State private var email:String = ""
    @State private var userName:String = ""
    @State private var fullName:String = ""
    @State private var password:String = ""
    @State var selectedImage: UIImage?
    @State var imagePickerIsPresented: Bool = false
    @State private var image: Image?
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var profileImageUrl: String?
    @State private var isUploading = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color.purple, Color.blue]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        if let image = image{
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140,height: 140)
                                .clipShape(.circle)
                                .overlay {
                                    Circle().stroke(Color.white, lineWidth:  3)
                                }
                        }else{
                            Button {
                                imagePickerIsPresented.toggle()
                                
                            } label: {
                                Image(systemName: "person.crop.circle.badge.plus")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                // .clipped()
                                //.padding(.top, 56)
                                    .foregroundColor(.white)
                                
                            }.sheet(
                                isPresented: $imagePickerIsPresented,
                                onDismiss: loadImage) {
                                    ImagePicker(image: $selectedImage)
                                }
                            
                        }
                        
                        
                    }
                    
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
                        CustomTextField(
                            text: $userName,
                            placeholder: Text("UserName"),
                            imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        CustomTextField(
                            text: $fullName,
                            placeholder: Text("FullName"),
                            imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        
                        CustomSecureField(
                            text: $password,
                            placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        
                        Button {
                            viewModel
                                .register(
                                    withEmail: email,
                                    password: password,
                                    username: userName,
                                    fullname: fullName,
                                    image: selectedImage
                                )
                        } label: {
                            Text("Sign Up")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .clipShape(.capsule)
                                .padding()
                        }
                        
                        Spacer()
                        
                        Button {
                            dismiss()
                        } label: {
                            HStack{
                                Text("Already have an account?")
                                    .font(.system(size: 14))
                                Text("Sign In")
                                    .font(.system(size: 14,weight: .semibold))
                                
                            }
                        }.foregroundStyle(.white)
                        
                        
                        
                    }
                    Spacer()
                }
                
                
            }
        }
    }
}
extension RegisterView{
    func loadImage(){
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
        
    }
}

#Preview {
    RegisterView()
}
