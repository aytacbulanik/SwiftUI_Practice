//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var count = ""
    var body: some View {
        Form {
            Section(header: Text("FORM").font(.largeTitle)) {
                Text("Form içerisinde bulunan view lara ayrı bir methodla background verilebilir.")
                    .listRowBackground(Color.black) // bu method ile tüm satıra renk verilir background methodunda ise sadece textin kapladığı alana renk verilir.
                    .foregroundStyle(.white)
            }
            
            Section(header: Text("Bu farklı bir").font(.largeTitle)) {
                Text("Deneme satırı")
                Text("Bu ise başka bir satır olacak bakalım hepsine birden renk ataması yapılabilecek mi ? ")
            }
            .listRowBackground(Color.green)
        }
    }
}

struct AnotherHeader : View {
    var name : String
    var imageName : String
    
    var body : some View {
        HStack {
            Image(systemName: imageName)
            Text(name)
        }
        .padding(.trailing)
        .font(.title)
        .foregroundStyle(.purple)
    }
}

#Preview {
    ContentView()
}

