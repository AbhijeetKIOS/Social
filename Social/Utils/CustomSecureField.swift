//
//  CustomSecureField.swift
//  Social
//
//  Created by Abhijeet Kumar on 06/04/26.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    @State private var isSecure: Bool = true
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading , 40)
            }
            
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
                
                // password filed..
                if isSecure {
                    SecureField("", text: $text)
                        .foregroundStyle(.white)
                }else{
                    TextField("", text: $text)
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                // show / hide Button
                Button {
                    isSecure.toggle()
                } label: {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundStyle(.white)
                }
                
                
                
            }
        }
    }
}

