//
//  SpellingView.swift
//  JeopardBee
//
//  Created by Yuna on 8/1/22.
//

import SwiftUI
import AVKit

struct SpellingView: View {
    @Binding var isSelected: Bool
    @State var audioPlayer: AVAudioPlayer!
    @State private var guess = ""
    @State private var selectedInfo = ""
    @State private var isSubmitted = false
    var amount: Int
    var answer: String
    var audioFile: String = ""
    var definition: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Listen")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Button {
                    playSound(audioFile)
                } label: {
                    Image(systemName: "speaker.wave.3.fill")
                        .font(.system(size: 72))
                }
            }
            VStack {
                Text("Definition: \(definition)")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .padding()
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
            .padding(.bottom, 150)
            Text("Answer is \(answer)")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .opacity(isSubmitted ? 1 : 0)
                .padding(.bottom, 100)
            Button("Return Home") {
                isSelected = true
            }
            .font(.system(size: 24))
            
        }
        .navigationBarHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
        .accentColor(Color.yellow)
        .background(Color.blue)
    }
    
    func playSound(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: ".mp3") else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer.play()
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
        SpellingView(isSelected: .constant(true), amount: 0, answer: "", audioFile: "", definition: "")
    }
}


