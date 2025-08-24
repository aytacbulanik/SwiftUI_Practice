//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct LightBulbView : View {
    
    @Binding var isOn : Bool //bu değişiklik diğer view den yakalanacak başlangıç değeri vermiyoruz.
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
                .padding()
            Button("Change Color") {
                isOn.toggle()
            }
        }
    }
}


struct ContentView: View {
    
    @State private var isLightOn : Bool = true
    var body: some View {
        VStack {
            LightBulbView(isOn: $isLightOn) //ison binding ile tanımlandığından isLightOn değerini alıyor. binding ile tanımlanmış değer değiştiğinde süper view ı da etkileyerek render ediyor.
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isLightOn ? .black : .white)
    }
   
}


#Preview {
        ContentView()
}

