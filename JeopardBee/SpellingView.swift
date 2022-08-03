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
    @State private var word = ""
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @State private var defintion = ""
    @State private var origin = ""
    @State private var sentence = ""
    @State private var speech = ""
    @State private var selectedInfo = ""
    static let infoArray = ["Definition","Language of Origin","Used in a Sentence", "Part of speech"]
    var amount: Int
    var answer: String
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
//            Picker(selection: $selectedInfo, label: Text("More information")) {
//                ForEach(Self.infoArray, id: \.self) { selectedInfo in
//                    Text(selectedInfo)
//                }
//            }
//            .frame(height: 50)
//            .cornerRadius(16)
//            .padding([.horizontal], 60)
//            .overlay(RoundedRectangle(cornerRadius: 16).stroke(lineWidth: 5))
//            .padding()
            
            Text("Spell the word!")
                .font(.system(size: 36))
                .foregroundColor(.white)
            CustomTextField(placeholder: "Type here", variable: $word)
                .autocapitalization(.none)
                .foregroundColor(.yellow)
                .padding()
                .padding(.bottom, 350)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
        .accentColor(Color.yellow)
        .background(Color.blue)
    }
    func isWon() {
        if word == "Japan" {
            
        }
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
        SpellingView(amount: 0, answer: "")
    }
}
