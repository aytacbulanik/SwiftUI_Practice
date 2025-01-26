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
            Text("Button Örnek - 1 ")
                .font(.largeTitle)
            Text("Giriş")
                .font(.title)
                .foregroundStyle(Color.gray)
            Text("Eğer sadace metinden ibaret bir botun oluşturmak istiyorsanız o metni parametre oalrak göndermeniz yeterli")
                .padding()
                .font(.title)
                .frame(maxWidth: .infinity)
                .background(Color.red)
                
            Button("Varsayılan Buton Tipi") {
                
            } //sadece metin ile buton oluşturuldu
            Text("Butonun üzerindeki yazıyı isteğinize göre düzenleyebilirsiniz.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .font(.title)
            Button(action: {}) {
                Text("Buton Metni")
                    .font(.title)
                    .fontWeight(.bold)
            } //label parametresine text göndererek istediğimiz ayarları yapıp butonu oluşturabiliriz.
            
            Button(action: {}) {
                Text("Yeşil Renk")
                    .foregroundStyle(Color.green)
                    .font(.title2)
                    .padding()
            } // burada da renkli bir button oluşturuldu.
            
        }.frame(maxWidth: .infinity)
        .background(Color.black)
            .foregroundStyle(Color.white)
       
    }
}

#Preview {
    ContentView()
}
