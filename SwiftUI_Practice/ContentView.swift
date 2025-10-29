//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    // segmented değerlerini yakalamak için değişkenler oluşturuluyor.
    @State private var segmentedState = "Gündüz"
    @State private var segmentedIndex = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Segmented Controller Örenk - 1")
            // text ile picker elemanları oluşturuluyor.
            Picker("", selection: $segmentedState) {
                Text("Gündüz").tag("Gündüz")
                Text("Gece").tag("Gece")
            }.pickerStyle(.segmented) // bu değeri girince segmented controller a dönüşüyor.
                .padding()
            Text("Resim ile oluşturulabilir.")
                .font(.headline)
            
            // image ile picker oluşturuluyor.
            Picker("", selection: $segmentedIndex) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }.pickerStyle(.segmented)
                .padding(.horizontal)
        }
    }
}


#Preview {
    ContentView()
}

