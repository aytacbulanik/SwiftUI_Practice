//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    var basitBirListe = ["Gruplama Özelliği","merhaba","bu oldumu","göreceğiz","bence yaparım"]
    var body: some View {
        List {
            ForEach(basitBirListe, id: \.self) { item in
                HStack {
                    Text(item).font( item == "Gruplama Özelliği" ? .largeTitle : .body)
                    Spacer()
                    Image(systemName: item == "bu oldumu" ? "circle.fill" : "circle")
                }
            }
        }
    }
}



#Preview {
    ContentView()
}

