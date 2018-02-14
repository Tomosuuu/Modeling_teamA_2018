//
//  CustomButton2.swift
//  button
//
//  Created by 坂本昂弘 on 2018/02/14.
//  Copyright © 2018年 坂本昂弘. All rights reserved.
//


import Foundation
import UIKit

@IBDesignable
class CustomButton2: UIButton {
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
    
    @IBInspectable var borderColor :UIColor = UIColor.black
    
    override func draw(_ rect: CGRect){
        self.layer.borderColor = borderColor.cgColor
    }
}

