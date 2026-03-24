    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI



struct ContentView: View {
    
    var objects = ["Rock" , "Scissors" , "Paper"]
    @State var randomNumber = Int.random(in: 0..<3)
    @State private var chose = ""
    @State private var P1Score = 0
    @State private var state = false
    
    var body: some View {
       Text("Welcome to the game")
            .font(.largeTitle)
            .foregroundStyle(.orange)
        HStack (spacing : 20) {
            Text("Your Score: \(P1Score)")
                .font(Font.largeTitle.bold())
            
        }
        
        ForEach(objects , id: \.self) { choise in
            Button(choise) {
                switch objects[self.randomNumber] {
                case "Rock" :
                    if choise == "Paper" {
                        self.state = true
                        self.P1Score += 1
                    } else {
                        self.state = false
                    }
                case "Scissors" :
                    if choise == "Rock" {
                        self.state = true
                        self.P1Score += 1
                    }else {
                        self.state = false
                    }
                case "Paper" :
                    if choise == "Scissors" {
                        self.state = true
                        self.P1Score += 1
                    }else {
                        self.state = false
                    }
                default:
                    break
                }
                randomNumber = Int.random(in: 0..<3)
            }
            .frame(width: 200 , height: 50)
            .padding()
            .background(.blue)
            .cornerRadius(14)
            .foregroundStyle(.white)
        }
        Text(objects[self.randomNumber])
            .foregroundStyle(.orange)
            .font(.system(size: 40))
            .padding()
        Text(state ? "DOĞRU" : "YANLIŞ")
            .padding()
            .background(state ? .green : .red)
            .foregroundStyle(.white)
            .font(.title)
            
        Spacer()
    }
}



#Preview {
    ContentView()
}

