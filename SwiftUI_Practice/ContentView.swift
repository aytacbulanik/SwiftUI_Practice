//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var tarihVerisi = Date()
    @State private var saatVerisi = Date()
    let dun = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    let yarin = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    var body: some View {
        VStack(spacing : 50) {
            Text("Date picker Örnek - 1")
                .font(.largeTitle)
                .foregroundStyle(Color.orange)
            
            Text("Datepicker nesnesinden bir değer almak yada değer atamak için değişken atamalıyız.")
                .frame(maxWidth : .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(Color.white)
                .font(.title)
            
        }
        HStack (alignment: .center) {
                // in parametresine bir closterrange giriyoruz. bitişe bugünü atadığımız için bugün tarih ve saatinde daha ileride birşey seçilemez.
            DatePicker("", selection: $tarihVerisi , in: dun...yarin , displayedComponents: .date)
                .environment(\.locale, Locale(identifier: "tr_TR")) // görüntülenecek zamanı türkçe olarak değiştiriyor.
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 4)) // bu ayar pickeri sarmalayan bir kenarlık oluşturmaya yarıyor.
                .padding()
                
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
