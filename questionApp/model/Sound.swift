//
//  Sound.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import Foundation
import AVFoundation

class Sound{
    var player:AVAudioPlayer?
    
    func playSound(fileName:String, extensionName: String){
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch  {
            print("error")
        }
    }
}
