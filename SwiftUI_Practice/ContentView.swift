    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI


struct ContentView: View {
    @State private var textColor = false
    
    var body: some View {
        Button("Hello, World") {
            textColor.toggle()
        }
        .frame(width: 100,height: 100)
        .padding()
        .background(textColor ? .blue : .red)
        .foregroundStyle(textColor ? .red : .blue)
        
    }
    
    
}



#Preview {
    ContentView()
}

