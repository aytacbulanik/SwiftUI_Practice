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
            Text("Button Örnek - 5 ")
            //sfsymbols ile butonlar bir arada kullanma
            Button(action: {}){
                Text("Ara")
                Image(systemName: "arrowshape.forward")
            }.padding()
            .font(.largeTitle)
                .background(Color.orange)
            
            Button(action: {}){
                VStack{
                    Text("Kaydı Başlat")
                    Image(systemName: "video")}
            }.padding()
            .font(.largeTitle)
                .background(Color.orange)
            
        }.frame(maxWidth: .infinity, maxHeight : .infinity)
            .background(Color.black)
            .foregroundStyle(Color.white)
        
       
    }
}

#Preview {
    ContentView()
}
