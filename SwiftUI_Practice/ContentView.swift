//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        NavigationStack {
            
            Form{
                Section {
                    Text("Bana Basıldı : \(count)")
                }
            }
            Button("Bana Bas"){
                count += 1
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}

