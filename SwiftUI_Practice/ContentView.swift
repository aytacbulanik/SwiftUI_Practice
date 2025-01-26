//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing : 20) {
            Text("Button Örnek - 2 ")
                .font(.largeTitle)
            Text("Text Birleştirme")
                .foregroundStyle(Color.gray)
            Text("Butonun yazılarına birden fazla tezt ekleyebiliriz.Varsayılan olarak HStack olarak görünecektir.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .font(.title)
                .foregroundStyle(Color.white)
            // Butonun yazılarına birden fazla tezt ekleyebiliriz.Varsayılan olarak HStack olarak görünecektir.
            Button(action: {}) {
                Text("Yeni Kullanıcı")
                    .font(.title)
                Text("(Kayıt Ol)")
            }
            Text("VStack Yapısı")
                .padding()
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
                .background(Color.purple)
                .foregroundStyle(Color.white)
            // bu button içerisine vstack koyarsak metinler alt alta hizalanır.
            Button(action: {}) {
                VStack{
                    Text("Parolanımı Unuttun ?")
                        .font(.title)
                    Text("Sıfırlamak İstiyorum")
                }
                .foregroundStyle(Color.black)
            }
               
        }.frame(maxWidth: .infinity)
        
       
    }
}

#Preview {
    ContentView()
}
