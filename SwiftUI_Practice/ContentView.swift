//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var basitBirListe = ["Gruplama Özelliği","merhaba","bu oldumu","göreceğiz","bence yaparım"] // liste güncelleneceği için state parametresi ekledik
    var body: some View {
        List {
            ForEach(basitBirListe , id: \.self) { veri in
                Text(veri)
                    .font(.title2)
                    
            }.onDelete(perform: verileriSil) // foreach metoduyla verileri gösterebiliyoruz. bu döngü bittiği yere delete metodunu ekliyoruz ve çağıracak fonksiyonu ayrı olarak tanımlıyoruz.
        }
    }
    // silme işlemi bu fonksiyonda çalışacak silmek istediğimiz indexi alacak ve diziden silecek
    func verileriSil(at indexler : IndexSet) {
        if let first = indexler.first {
            basitBirListe.remove(at: first)
        }
    }
}



#Preview {
    ContentView()
}

