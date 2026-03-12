//
//  Extensions.swift
//  Social
//
//  Created by Abhijeet Kumar on 12/03/26.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
