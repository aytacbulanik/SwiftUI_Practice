//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Form {
            Section {
                Text("Bu Bir Formdur !!")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                Text("Birden Fazla nesne alabilir içerisine ekleyebilirsiniz.")
            }
        }
    }
}

#Preview {
    ContentView()
}
