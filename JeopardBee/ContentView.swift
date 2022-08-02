//
//  ContentView.swift
//  JeopardBee
//
//  Created by 이소은 on 2022/08/01.
//

//import SwiftUI
//
//struct ContentView: View{
//    @State private var moves = Array(repeating: "", count: 9)
//
//    var body: some View {
//        VStack {
//            Text("Jeopard Bee")
//                .font(.title)
//                .fontWeight(.bold)
//            .padding()
//            Rectangle()
//                     .fill(.blue)
//                     .frame(width: 100, height: 50)
//            Rectangle()
//                     .fill(.blue)
//                     .frame(width: 100, height: 50)
//            Rectangle()
//                     .fill(.blue)
//                     .frame(width: 100, height: 50)
//            Rectangle()
//                     .fill(.blue)
//                     .frame(width: 100, height: 50)
//            Rectangle()
//                     .fill(.blue)
//                     .frame(width: 100, height: 50)
//            }
//        }
//    }
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Jeopard Bee")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing : 20) , count : 5),spacing : 20, content: {
                
                ZStack{
                        Color.blue
                        Text("Verb")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                ZStack{
                    Color.blue
                    Text("Adjective")
                        .font(.system(size: 13))
                        .fontWeight(.heavy)
                }
                .frame(width: 70, height: 50, alignment: .center)
                ZStack{
                    Color.blue
                    Text("Place")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                }
                .frame(width: 70, height: 50, alignment: .center)
                ZStack{
                    Color.blue
                    Text("Object")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                }
                .frame(width: 70, height: 50, alignment: .center)
                ZStack{
                    Color.blue
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
