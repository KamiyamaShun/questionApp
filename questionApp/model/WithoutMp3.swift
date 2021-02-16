//
//  WithoutMp3.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import Foundation

class WithoutMp3: Sound{
    override func playSound(fileName:String, extensionName: String){
        if extensionName == "mp3"{
            print("このファイルは再生できません")
        }
        player?.stop()
    }
}
