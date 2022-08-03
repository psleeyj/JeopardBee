//
//  ContentView.swift
//  JeopardBee
//
//  Created by 이소은 on 2022/08/01.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Jeopard Bee")
                        .font(.title)
                        .fontWeight(.bold)
                    Image("Bee")
                        .resizable()
                        .frame(width: 80, height: 80, alignment: .center)
                }
                
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing : 20) , count : 5),spacing : 20, content: {
                    ZStack{
                        Color.red
                            Text("Verb")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    
                    ZStack{
                        Color.red
                        Text("Adjective")
                            .font(.system(size: 14))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    ZStack{
                        Color.red
                        Text("Place")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    ZStack{
                        Color.red
                        Text("Object")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    ZStack{
                        Color.red
                        Text("Animal")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    
                    
                    ForEach(0..<5){ index in
                        ZStack{
                            Color.blue
                            Text("$100")
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                    }
                    
                    ForEach(0..<5){ index in
                        ZStack{
                            Color.blue
                            Text("$200")
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                    }
                    
                    ForEach(0..<5){ index in
                        ZStack{
                            Color.blue
                            Text("$300")
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                    }
                    
                    ForEach(0..<5){ index in
                        ZStack{
                            Color.blue
                            Text("$400")
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                    }
                    
                    ForEach(0..<5){ index in
                        ZStack{
                            Color.blue
                            Text("$500")
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                    }
                })
            }
            .preferredColorScheme(.dark)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
