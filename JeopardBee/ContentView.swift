//
//  ContentView.swift
//  JeopardBee
//
//  Created by 이소은 on 2022/08/01.
//


import SwiftUI

struct ContentView: View {
    @State private var items = [
        Item(amount: 100, audioFile: "Japan", answer: "Japan", definition: "country in East Asia."),
        Item(amount: 100, audioFile: "knot", answer: "knot", definition: "a fastening made by tying a material."),
        Item(amount: 100, audioFile: "impolite", answer: "impolite", definition: "not having good manners."),
        Item(amount: 100, audioFile: "reveal", answer: "reveal", definition: "to make known."),
        Item(amount: 100, audioFile: "coyote", answer: "coyote", definition: "a type of wild dog."),
         
        Item(amount: 200, audioFile: "Wales", answer: "Wales", definition: "country in Southwest Britain."),
        Item(amount: 200, audioFile: "heirloom", answer: "heirloom", definition: "an object belonged to a family for generations."),
        Item(amount: 200, audioFile: "dire", answer: "dire", definition: "extremely urgent or serious."),
        Item(amount: 200, audioFile: "exerts", answer: "exerts", definition: "to apply or bring to bear."),
        Item(amount: 200, audioFile: "dalmatian", answer: "dalmatian", definition: "a breed of dark-spotted dog."),
         
        Item(amount: 300, audioFile: "New Hampshire", answer: "New Hampshire", definition: "a US state in New England."),
        Item(amount: 300, audioFile: "mousse", answer: "mousse", definition: "a light and smooth-textured dish."),
        Item(amount: 300, audioFile: "topological", answer: "topological", definition: "of or relating to the study of a region."),
        Item(amount: 300, audioFile: "wreaked", answer: "wreaked", definition: "brought about harm: caused, inflicted."),
        Item(amount: 300, audioFile: "mastodon", answer: "mastodon", definition: "any proboscidean belonging to the extinct genus Mammut."),
         
        Item(amount: 400, audioFile: "Edinburgh", answer: "Edinburgh", definition: "the capital of Scotland."),
        Item(amount: 400, audioFile: "bier", answer: "bier", definition: "a stand on which a coffin is carried to the grave."),
        Item(amount: 400, audioFile: "motley", answer: "motley", definition: "composed of a haphazard and incongruous mixture of elements."),
        Item(amount: 400, audioFile: "adduced", answer: "adduced", definition: "brought forward for consideration in a discussion, analysis, or debate."),
         Item(amount: 400, audioFile: "crustacean", answer: "crustacean", definition: "an anthropod of an aquatic group."),
         
        Item(amount: 500, audioFile: "Des Moines", answer: "Des Moines", definition: "capital of Iowa."),
        Item(amount: 500, audioFile: "bivouac", answer: "bivouac", definition: "an encampment under little or no shelter."),
        Item(amount: 500, audioFile: "Chaucerian", answer: "Chaucerian", definition: "of, relating to, or resembling an English medieval writer."),
        Item(amount: 500, audioFile: "mete", answer: "mete", definition: "to deal out: to allot, apportion."),
        Item(amount: 500, audioFile: "man-o'-war", answer: "man-o'-war", definition: "a marine hydrozoan found in the Atlantic Ocean and the Indian Ocean.")]
    
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
        .navigationBarHidden(true)
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
    @State private var isSelected = false
    var body: some View {
        VStack{
            if isSelected { EmptyView () }
            else {
                NavigationLink {
                    SpellingView(isSelected: $isSelected, amount: amount, answer: answer, audioFile: audioFile)
                } label: {
                    Text("$\(amount)")
                }
                .frame(width: 60, height: 60, alignment: .center)
                .background(.blue)
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}
}

struct Item: Identifiable {
    let id = UUID()
    var amount: Int
    var audioFile: String
    var answer: String
    var definition: String
}
