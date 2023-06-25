//
//  UIView+EX.swift
//  MyRadio
//
//  Created by Aleksei on 06.06.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
    }
    
    func addGradientLayer(_ cornerRadius: CGFloat? = nil) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = cornerRadius ?? 0
        
        // Setup point and colors
        let startColor = UIColor.lightGray.cgColor
        let endColor = UIColor.darkGray.cgColor
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        
        // Animation
        let gradientAnimation = CABasicAnimation(keyPath: "colors")
        gradientAnimation.fromValue = [startColor, endColor]
        gradientAnimation.toValue = [endColor, startColor]
        gradientAnimation.duration = 1.5
        gradientAnimation.autoreverses = true
        gradientAnimation.repeatCount = Float.infinity
        gradientLayer.add(gradientAnimation, forKey: "gradientAnimation")
        layer.addSublayer(gradientLayer)
    }
}
