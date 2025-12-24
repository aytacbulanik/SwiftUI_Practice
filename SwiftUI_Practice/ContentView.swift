//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TextViewAgain()
        
    }
}

struct TextViewAgain : View {
    @State private var isOn = 10.0
    var body: some View {
        VStack(spacing : 20) {
            Text("Bu bir İOS uygulamasıdır.").underline() +
            Text("SWİFTUI").foregroundStyle(Color.blue)
                .font(.title)
                .baselineOffset(4) +
            Text("Viewlar")
            
            Text("Avenir Next")
                .font(Font.custom("Avenir Next", size: 30))
        }
       
    }
}


#Preview {
    ContentView()
}

