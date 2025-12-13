//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TextView()
        
    }
}

struct TextView : View {
    var body: some View {
        VStack {
            Text("Merhaba Deneme")
            Image("image-sun")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
                .cornerRadius(50)
        }
       
    }
}


#Preview {
    ContentView()
}

