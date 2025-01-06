//
//  SoundPlayer.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playAudio(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
