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
            Text("Button Örnek - 3 ")
                .font(.largeTitle)
            Text("Arka Planlı Butonlar")
                .font(.title)
                .foregroundStyle(Color.gray)
            Text("SwiftUI ile arka planlı butonlar yapıp gölge ekleyebiliriz.")
                .padding()
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
                .background(Color.purple)
            Button(action: {}) {
                Text("Sade Button")
                    .padding()
                    .background(Color.purple)
                    .font(.title)
                    .cornerRadius(15)
            }
            Button(action: {}) {
                Text("Gölgelerin Gücü Adına")
                    .padding()
                    .font(.title)
                    .background(Color.purple)
                    .cornerRadius(20)
                    .shadow(color: Color.purple,radius: 10,x: 5,y: 5) // gölge vermeye yarıyor.radius kaç birim yarıçaplı bir gölge oluşturur x ve y değerleri ise sağa ve aşağı kaymasını sağlar butonun
            }
               
        }.frame(maxWidth: .infinity, maxHeight : .infinity)
            .background(Color.black)
            .foregroundStyle(Color.white)
        
       
    }
}

#Preview {
    ContentView()
}
