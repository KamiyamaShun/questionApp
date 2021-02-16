//
//  ImageModel.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import Foundation
class ImageModel {
    let imageText:String
    let answer:Bool
    
    init(imageName:String, correctOrNot:Bool) {
        imageText = imageName
        answer = correctOrNot
    }
}
