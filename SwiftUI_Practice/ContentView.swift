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
        ZStack {
            Color.black.frame(maxWidth : .infinity)
                .ignoresSafeArea()
        }
        
    }
}



#Preview {
    ContentView()
}

