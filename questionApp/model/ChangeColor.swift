//
//  ChangeColor.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import Foundation
import UIKit

class ChangeColor{
    func changeColor(topR: CGFloat, topG: CGFloat, topB: CGFloat, topAl: CGFloat, bottomR: CGFloat, bottomG: CGFloat, bottomB: CGFloat, bottomAl: CGFloat) -> CAGradientLayer{
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAl)
        
        let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAl)
        
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
}
