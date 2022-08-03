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
    var audioFile: String = ""
    func playSound() {
        guard let url = Bundle.main.url(forResource: "\(audioFile)", withExtension: ".mp3") else { return }
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
    @State private var guess = ""
    @State private var defintion = ""
    @State private var selectedInfo = ""
    @State private var isSubmitted = false
    var amount: Int
    var answer: String
    var audioFile: String
    var definition: String
    var body: some View {
            VStack {
                HStack {
                    Text("Listen")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                    
                    Button {
                        SoundManager.instance.playSound()
                    } label: {
                        Image(systemName: "speaker.wave.3.fill")
                            .font(.system(size: 72))
                    }
                }
    
                Text("Spell the word!")
                    .font(.system(size: 36))
                    .foregroundColor(.white)
                CustomTextField(placeholder: "Type here", variable: $guess)
                    .autocapitalization(.none)
                    .foregroundColor(.yellow)
                    .padding()
                Button {
                    self.isSubmitted.toggle()
                } label: {
                    Text("Submit")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 100)
                Text("Answer is \(answer)")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .opacity(isSubmitted ? 1 : 0)
                    .padding(.bottom, 100)
                NavigationLink("Return home", destination: {ContentView()})
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                }
        
            .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
            .accentColor(Color.yellow)
            .background(Color.blue)
        }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .font(.system(size: 30))
            .frame(height: 80)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(lineWidth: 5))
            .padding([.horizontal], 24)
    }
}

struct SpellingView_Previews: PreviewProvider {
    static var previews: some View {
        SpellingView(amount: 0, answer: "", audioFile: "", definition: "")
    }
}


