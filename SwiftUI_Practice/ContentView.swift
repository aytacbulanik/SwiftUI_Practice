    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI

struct CapsuleText : View {
    var text : String
    
    var body: some View {
        Text(text)
            .font(Font.largeTitle)
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.capsule)
    }
}


struct ContentView: View {
    @State private var textColor = false
    
    var body: some View {
        CapsuleText(text: "First")
        CapsuleText(text: "Second")
        
    }
    
    
}



#Preview {
    ContentView()
}

