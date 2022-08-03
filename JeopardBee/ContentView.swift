//
//  ContentView.swift
//  JeopardBee
//
//  Created by 이소은 on 2022/08/01.
//


import SwiftUI

struct ContentView: View {
    @State private var items = [
         Item(amount: 100, audioFile: "Test", answer: "Answer"),
         Item(amount: 100, audioFile: "Test2", answer: "Answer2"),
         Item(amount: 100, audioFile: "Test3", answer: "Answer3"),
         Item(amount: 100, audioFile: "Test4", answer: "Answer4"),
         Item(amount: 100, audioFile: "Test5", answer: "Answer5"),
         
         Item(amount: 200, audioFile: "Test6", answer: "Answer6"),
         Item(amount: 200, audioFile: "Test7", answer: "Answer7"),
         Item(amount: 200, audioFile: "Test8", answer: "Answer8"),
         Item(amount: 200, audioFile: "Test9", answer: "Answer9"),
         Item(amount: 200, audioFile: "Test10", answer: "Answer10"),
         
         Item(amount: 300, audioFile: "Test11", answer: "Answer11"),
         Item(amount: 300, audioFile: "Test12", answer: "Answer12"),
         Item(amount: 300, audioFile: "Test13", answer: "Answer13"),
         Item(amount: 300, audioFile: "Test14", answer: "Answer14"),
         Item(amount: 300, audioFile: "Test15", answer: "Answer15"),
         
         Item(amount: 400, audioFile: "Test16", answer: "Answer16"),
         Item(amount: 400, audioFile: "Test17", answer: "Answer17"),
         Item(amount: 400, audioFile: "Test18", answer: "Answer18"),
         Item(amount: 400, audioFile: "Test19", answer: "Answer19"),
         Item(amount: 400, audioFile: "Test20", answer: "Answer20"),
         
         Item(amount: 500, audioFile: "Test21", answer: "Answer21"),
         Item(amount: 500, audioFile: "Test22", answer: "Answer22"),
         Item(amount: 500, audioFile: "Test23", answer: "Answer23"),
         Item(amount: 500, audioFile: "Test24", answer: "Answer24"),
         Item(amount: 500, audioFile: "Test25", answer: "Answer25")]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Jeopard Bee")
                        .font(.title)
                        .fontWeight(.bold)
                    Image("Bee")
                        .resizable()
                        .frame(width: 70, height: 65, alignment: .center)
                }
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing: 13), count: 5), spacing: 13) {
                    ZStack{
                        Color.red
                        Text("Verb")
                            .font(.system(size: 17))
                            .fontWeight(.heavy)
                                        }
                                .frame(width: 60, height: 60, alignment: .center)
                
                    ZStack{
                        Color.red
                        Text("Adjective")
                            .font(.system(size: 11))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    
                    ZStack{
                        Color.red
                        Text("Place")
                            .font(.system(size: 17))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    
                    ZStack{
                        Color.red
                        Text("Object")
                            .font(.system(size: 17))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    
                    ZStack{
                        Color.red
                        Text("Animal")
                            .font(.system(size: 17))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    
                    ForEach(items) { item in
                        ItemView(amount: item.amount, audioFile: item.audioFile, answer: item.answer)
                    }
                }
                Spacer()
            }
                .preferredColorScheme(.dark)
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ItemView: View {
    var amount: Int
    var audioFile: String
    var answer: String
    var body: some View {
        NavigationLink("$\(amount)") {
            QuestionView(amount: amount, audioFile: audioFile, answer: answer)
        }
        .frame(width: 60, height: 60, alignment: .center)
        .background(.blue)
        .font(.headline)
        .foregroundColor(.white)
    }
}

struct Item: Identifiable {
    let id = UUID()
    var amount: Int
    var audioFile: String
    var answer: String
}
}
