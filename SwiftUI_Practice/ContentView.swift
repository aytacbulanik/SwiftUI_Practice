    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI



struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var dateNow = Date.now
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours" , value: $sleepAmount , in: 4...12 , step: 0.25)
            DatePicker("The date is" , selection: $dateNow, in: ...Date()) // in parametresinde verilen aralık geçmişi seçmemizi engeller
                .labelsHidden() // label ı pasif yapar ve ortalar
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

