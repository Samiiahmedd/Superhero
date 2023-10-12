//
//  Playsound.swift
//  Superhero
//
//  Created by Sami Ahmed on 01/10/2023.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playsound(sound : String, type : String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Error")
        }
    }
}
