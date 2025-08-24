//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
   
var list = ["deneme","test","olacak mı","görelim"]
    var body: some View {
        List(list, id: \.self) { item in
            Text(item)
        }
            
    }
    
}


#Preview {
    ContentView()
}

