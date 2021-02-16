//
//  imagesList.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import Foundation

class ImagesList {
    var list = [ImageModel]()
    
    init() {
        list.append(ImageModel(imageName: "0", correctOrNot: true))
        list.append(ImageModel(imageName: "1", correctOrNot: false))
        list.append(ImageModel(imageName: "2", correctOrNot: false))
        list.append(ImageModel(imageName: "3", correctOrNot: false))
        list.append(ImageModel(imageName: "4", correctOrNot: true))
        list.append(ImageModel(imageName: "5", correctOrNot: false))
        list.append(ImageModel(imageName: "6", correctOrNot: true))
        list.append(ImageModel(imageName: "7", correctOrNot: true))
        list.append(ImageModel(imageName: "8", correctOrNot: false))
        list.append(ImageModel(imageName: "9", correctOrNot: true))
        list.append(ImageModel(imageName: "10", correctOrNot: true))
    }
}
