//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TextViewAgain()
        
    }
}

struct TextViewAgain : View {
    @State private var name = ""
    var body: some View {
        VStack(spacing : 20) {
            Text("Textfield Örnek - 1 : \(name)")
            
            TextField("Lütfen adınızı giriniz", text: $name) // ilk yazılan parametre placeholder değeridir.
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center) // girilen değerin ve placeholderın nasıl hizalanacağını gösteriyor.
                .padding(.horizontal)
                .keyboardType(.numberPad)// veri girileceği zaman klavye seçimini sağlıyor.
            
            // bu yazımla textfielda arka plan veriyoruz.
            TextField("Adınızı Giriniz", text: $name)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color.init(red: 0.4, green: 0.789, blue: 0.678, opacity: 0.5)))
                .padding()
                .autocorrectionDisabled(false) //otomatik yazım düzeltme yapıyoruz.
                .textInputAutocapitalization(.words) // .sentences, .words, .characters büyütmek için yazılıyor.
            
            TextField(text: $name) {
                Label("Adınız", systemImage: "person")
                    
            }.padding(.horizontal , 20)
            //aşağğıdaki kod bloğu ile textfield içerisine yazılacak karakter sınırlamasını ayarlıyoruz.
                .onChange(of: name) { newValue in
                    if newValue.count > 10 {
                      name = String(newValue.prefix(10))
                    }
                  }
            
            // Cyan kenarlıklı (2pt) TextField örneği
            TextField("Cyan Kenarlıklı", text: $name)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding(.horizontal, 20)
            
            // Solunda e-posta simgesi olan ve gri kenarlıklı TextField
            HStack(spacing: 8) {
                Image(systemName: "envelope")
                    .foregroundStyle(.gray)
                TextField("E-posta", text: $name)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal, 20)
        }
       
    }
}


#Preview {
    ContentView()
}

