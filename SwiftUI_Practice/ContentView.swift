    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI


struct ContentView: View {
    
    var flags = ["flag.slash.circle.fill","flag.circle","house.and.flag.fill",
                 "flag.pattern.checkered.lc"].shuffled()
    var correctAnswer : Int = Int.random(in: 0...2)
    
    @State private var scoreTitle = ""
    @State private var alertState = false
    var body: some View {
        VStack(spacing: 30) {
            VStack {
                Text("Chose Your Flag")
                Text("\(flags[correctAnswer])")
                    .font(.system(size:30))
                    .foregroundStyle(.cyan)
            }
            VStack {
                ForEach (0..<3){ number in
                    Button {
                        sayAnswer(number)
                    } label: {
                        Image(systemName: "\(flags[number])")
                    }
                    .alert("Kontrol Yapıldı",isPresented : $alertState) {
                        Text("\(scoreTitle)")
                    }
                }
            }
            .font(.largeTitle)
        }
    }
    
    func sayAnswer(_ number : Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        alertState = true
    }
}



#Preview {
    ContentView()
}

