//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var tarihVerisi = Date()
    
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
        HStack{
            DatePicker("Tarihi seçiniz : ",selection: $tarihVerisi, displayedComponents: .date)
        }
       
    }
}

#Preview {
    ContentView()
}
