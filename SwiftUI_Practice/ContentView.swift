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
            Section(header: Text("Bu inset Metodu").font(.largeTitle)) {
                Text("herbir satıra istediğimiz gibi girinti yada çıkıntı verebiliriz.")
                Color.red.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)) // bir viewe inset metoduyla kenarlardan ne kadar boşluk bırakması gerektiğini ayarlayabiliriz.
                Text("herbir satıra istediğimiz gibi girinti yada çıkıntı verebiliriz.")
                    .listRowInsets(.init(top: 0, leading: 30, bottom: 0, trailing: 0)) // tek başına istediğimiz değerleri girerek sınırları belirleriz
            }
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

