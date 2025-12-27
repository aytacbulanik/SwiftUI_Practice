//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack(spacing:10) {
            Text("Circle")
                .font(.largeTitle)
            Circle().padding()
            
            Text("Capsule")
                .font(.largeTitle)
            Capsule().padding()
            
            Text("Ellipse")
                .font(.largeTitle)
            Ellipse().padding()
        }
        
    }
}



#Preview {
    ContentView()
}

