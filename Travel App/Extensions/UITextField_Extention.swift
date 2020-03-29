//
//  UITextField_Extention.swift
//  Travel App
//
//  Created by Ahmed barghash on 2/8/20.
//  Copyright © 2020 Ahmed barghash. All rights reserved.
//

import UIKit

extension UITextField {
    func addRightView(image: UIImage, isSecure: Bool = false){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 25, height: 25))
        imageView.image = image

        if isSecure {
            
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "eye-2"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
            
        }else{
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
    
}
