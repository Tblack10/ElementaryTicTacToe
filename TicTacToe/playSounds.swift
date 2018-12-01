//
//  playSounds.swift
//  TicTacToe
//
//  Created by Travis Black on 2018-11-29.
//  Copyright © 2018 Tralack. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

struct SoundPlayer {
    
    func playSound() {
        
       // let fileURL = Bundle.main.path(forResource: "drainedIt", ofType: "wav")
        
//        if let fileURL = Bundle.main.path(forResource: "drainedIt", ofType: "wav") {
//            print("Continue processing")
//        } else {
//            print("Error: No file with specified name exists")
//        }
        
        do {
            if let fileURL = Bundle.main.path(forResource: "drainedIt", ofType: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
        
        audioPlayer?.play()
    }
    
    func muteSound()
    {
        audioPlayer?.volume == 1.0 ? (audioPlayer?.volume = 0) : (audioPlayer?.volume = 1.0)
    }
    
}
