//
//  UIView+Extensions.swift
//  HealthApp
//
//  Created by Saadet Şimşek on 24/02/2025.
//

import UIKit

extension UIView {
    func addBottomBorder( with color: UIColor, height: CGFloat){
        let seperator = UIView()
        seperator.backgroundColor = color
        seperator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        seperator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(seperator)
    }
}
