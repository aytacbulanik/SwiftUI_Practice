//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing : 50) {
            Text("Button Örnek - 4 ")
                   
            Button(action: {}) {
                Text("Kenarlıklı Button")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.orange)
                    .border(.white, width: 4)
            }// kare bir kenarlık verilerek button oluşturulmuş olduk
            
            Button(action : {}) {
                Text("Yuvarlak kenarlıklı Button")
                    .padding()
                    .font(.title)
                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4))
            } // arkaplana bir stil vererek border lı ve yuvarlak bir button elde etmiş olduk
            
            
        }.frame(maxWidth: .infinity, maxHeight : .infinity)
            .background(Color.black)
            .foregroundStyle(Color.white)
        
       
    }
}

#Preview {
    ContentView()
}
