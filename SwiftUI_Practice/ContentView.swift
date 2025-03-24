//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct IsYapisi : Identifiable {
    let id = UUID()
    var isinAdi = ""
    var isinZamani = ""
    var girintilimi = false
}

struct ContentView: View {
    @State private var isinAdi = ""
    @State var yapilacakIsler: [IsYapisi] = [
        IsYapisi(isinAdi : "Yazılım Geliştirici", isinZamani : "10:00", girintilimi : false),
        IsYapisi(isinAdi : "Ekmek Al", isinZamani : "17:00", girintilimi : false),
        IsYapisi(isinAdi : "Ders Çalış", isinZamani : "09:00", girintilimi : true),
        IsYapisi(isinAdi : "Arabayı yıkat", isinZamani : "18:30", girintilimi : false),
        IsYapisi(isinAdi : "Ödevlerini Bitir", isinZamani : "14:00", girintilimi : true)
    ]
    
    var body: some View {
        
        List {
            Section(header: VStack {
                Text("Yapılacaklar").font(.largeTitle)
                HStack {
                    TextField("yeni işi giriniz", text: $isinAdi)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        yapilacakIsler.append(IsYapisi(isinAdi: isinAdi, isinZamani: "", girintilimi: false))
                        isinAdi = ""
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(.blue)
                    }
                }
            }) {
                ForEach(yapilacakIsler) { veri in
                    Text(veri.isinAdi).font(.headline)
                        .listRowBackground(arkaPlanAyarla(girinti: veri.girintilimi))
                }
            }
        }
    }
    
    func arkaPlanAyarla(girinti : Bool) -> Color {
        girinti ? Color.green : Color.clear
    }
}


#Preview {
    ContentView()
}

