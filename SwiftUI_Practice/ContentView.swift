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
    
    let tipArray = [0,10,25,20,15]
    
    var totalBill : Double {
        return billAmount * (Double(tipPercent) / 100 + 1.0)
    }
    
    var totalPercentBill : Double {
        return (billAmount * (1.0 + Double(tipPercent) / 100.0) ) / Double(numberOfPeople)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Hesap tutarını giriniz", value: $billAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad) // veriyi double olarak alıyoruz ve telefonun varsayılan para birimi olarak yazdırıyoruz.
                    Picker("Select People" , selection: $numberOfPeople) {
                        ForEach(2..<11, id: \.self) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section ("How much do you want to tip ?"){
                    Picker("Select Percentes" , selection: $tipPercent) {
                        ForEach(tipArray , id: \.self) {
                            Text("% \($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section ("Toplam Hesap"){
                    Text(totalBill , format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                Section("Kişi Başı Tutar") {
                    Text(totalPercentBill, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("View Split")
        }
    }
}



#Preview {
    ContentView()
}

