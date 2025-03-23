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
            Section {
                Text("Bu bir Formdur")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                Text("Bu form nesneleri alt alta sıralanırlar ve uzunluklarına göre alt alta sıralanırlar. sığmadıkları yerde alta eklenir.")
            }
            Section{
                Text("BU İKİNCİ FORM")
                    .font(.title)
                    .foregroundStyle(.blue)
                Text("şimdi istediğimiz kadar view ekleyebiliriz buraya kadar")
                Rectangle()
                    .foregroundStyle(.red)
            }
            
        }
    }
}

#Preview {
    ContentView()
}

