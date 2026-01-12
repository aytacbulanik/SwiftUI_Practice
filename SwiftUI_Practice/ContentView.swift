    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI


struct ContentView: View {
    @State private var billAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercent = 20
    
    let tipArray = [0,10,25,20,25]
    
    var body: some View {
        Form {
            Section {
                TextField("Hesap tutarını giriniz", value: $billAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad) // veriyi double olarak alıyoruz ve telefonun varsayılan para birimi olarak yazdırıyoruz.
                Picker("Select People" , selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
            }
            Section {
                Text(billAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}



#Preview {
    ContentView()
}

