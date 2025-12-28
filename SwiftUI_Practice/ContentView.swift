//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    @State private var circleProgress : Float = 0.5
    private var circleCount : Int {
        Int( circleProgress * 100 )
    }
    var body: some View {
        VStack {
            ZStack {
                Circle().stroke(style: StrokeStyle(lineWidth:15)).fill(Color.init(red: 0, green: 0, blue: 1,opacity: 0.4))
                    .padding()
                Circle().trim(from: 0 , to: CGFloat(circleProgress))
                    .stroke(style: StrokeStyle(lineWidth : 15, lineCap: .round))
                    .rotationEffect(.degrees(-90)) // bir nesnenin istenilen oranda döndürülmesini sağlar.
                    .padding()
                    
                    
                
            }.frame(width: 150, height: 150)
                .overlay( // overlay metodu nesnenin ortasına başka view koymaya yarıyor.
                    Text("% \(circleCount)")
                        .font(.largeTitle)
                        .foregroundStyle(Color.init(red: 0, green: 0, blue: 1,opacity: 0.4))
                )
            
        }
        
    }
}



#Preview {
    ContentView()
}

