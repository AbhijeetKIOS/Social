//
//  UploadView.swift
//  Social
//
//  Created by Abhijeet Kumar on 22/02/26.
//

import SwiftUI

struct UploadView: View {
    @State var selectedImage: UIImage?
    @State private var postImage: Image?
    @State var captionText: String = ""
    var body: some View {
        VStack{
            if postImage != nil {
                Button {
                } label: {
                    Image(systemName: "photo.circle")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                }
                
                
            }
            else{
                HStack(alignment: .top){
                    Image("abhi")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    TextField("Enter your caption", text: $captionText)
                }.padding()
                Button {
                    
                } label: {
                    Text("Post")
                        .font(Font.system(size: 18, weight: .bold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundStyle(Color.white)
                }
                .padding()
                
                
            }
        }
        Spacer()
    }
}

#Preview {
    UploadView()
}
