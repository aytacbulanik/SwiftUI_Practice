//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    @State private var kullaniciAdi = ""
    @State private var parola = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.largeTitle)
                .foregroundStyle(Color.blue)
                .padding(.bottom,100)
            
            Text("Secure Field Screen - 1")
                .font(.largeTitle)
            Text("Uygulama Login Ekranı")
                .font(.title)
                .foregroundStyle(Color.red)
            // ilk değer place holder da ne yazdığı ile ilgili text değeri ise içine girilen değeri yakalamak için kullanılıyor.
            TextField("Kullanıcı Adınızı Giriniz", text: $kullaniciAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle()) // köşeleri yuvarlak border veriyor
                .padding()
            //burada ise şifre olduğu için karakterler gözükmüyor
            SecureField("Şifreniz",text: $parola)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            HStack {
                Spacer()
                Button("Giriş Yap", action: {})
                
            }.padding(.trailing,20)
            
        }
    }
}


#Preview {
    ContentView()
}

