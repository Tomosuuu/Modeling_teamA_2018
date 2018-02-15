//
//  CustomButton.swift
//  button
//
//  Created by 奥濱　眞聖 on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//

//import Foundation

import UIKit

@IBDesignable
class CustomButton: UIButton {
    @IBInspectable var textColor: UIColor?
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
}

