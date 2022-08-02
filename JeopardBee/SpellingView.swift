//
//  SpellingView.swift
//  JeopardBee
//
//  Created by Yuna on 8/1/22.
//

import SwiftUI
import AVKit

class SoundManager: ObservableObject {
    
    static let instance = SoundManager()
    var player: AVAudioPlayer?
   
    func playSound() {
        guard let url = URL(string: "") else { return }
        do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}

struct SpellingView: View {
    @StateObject var soundManager = SoundManager()
    var body: some View {
        Button {
            SoundManager.instance.playSound()
        } label: {
            Image(systemName: "speaker.wave.3.fill")
        }
    }
}

struct SpellingView_Previews: PreviewProvider {
    static var previews: some View {
        SpellingView()
    }
}
