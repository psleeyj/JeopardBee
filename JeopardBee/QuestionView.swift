//
//  QuestionView.swift
//  JeopardBee
//
//  Created by 이소은 on 2022/08/03.
//

import SwiftUI

struct QuestionView: View {
    var amount: Int
    var audioFile: String
    var answer: String
    var body: some View {
        VStack {
            Text("The amount is: $\(amount)")
            Text("The audio file is: \(audioFile)")
            Text("The answer is: \(answer)")
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(amount: 0, audioFile: "", answer: "")
    }
}
