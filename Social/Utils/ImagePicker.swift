//
//  ImagePicker.swift
//  Social
//
//  Created by Abhijeet Kumar on 02/04/26.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var image: UIImage?
    @Environment(\.presentationMode) var mode

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // ✅ Correct function name
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()

        picker.delegate = context.coordinator   // ✅ IMPORTANT
        picker.sourceType = .photoLibrary       // or .camera

        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // nothing needed
    }

    // MARK: Coordinator
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        // Image selected
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image = info[.originalImage] as? UIImage {
                parent.image = image
            }

            parent.mode.wrappedValue.dismiss()
        }

        // Cancel
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.mode.wrappedValue.dismiss()
        }
    }
}



