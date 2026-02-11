    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct DetayVerileri : Identifiable {
    var id = UUID()
    let message : String
    let image : Image
}

struct FirstScreenUI : View {
    
    @State private var gidenVeri : DetayVerileri? = nil
    @State private var kullaniciMesaji = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Burası Ana Ekrandır")
                .font(.largeTitle)
                .foregroundStyle(.red)
            Spacer()
            HStack {
                Text("Mesajınızı Giriniz : ")
                TextField("Mesajınız... ", text: $kullaniciMesaji)
            }
            Button("Veri Gönder") {
                // diğer ekrana gönderilecek veri oluşturuluyor.
                self.gidenVeri = DetayVerileri(message: kullaniciMesaji, image: Image("image-sun"))
            }// diğer ekrana gidecek veri yakalandığı için view nesnesi içerisinde parametre olarak gönderiliyor.
            .sheet(item: $gidenVeri) { veri in
                DetayEkranı(detayVeriler: veri)
            }
            Spacer()
        }
        .padding()
    }
}

struct DetayEkranı : View {
    
    @Environment(\.dismiss) var dismiss
    let detayVeriler : DetayVerileri
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Mesajınız : ") + Text(detayVeriler.message)
                .font(.title)
                .foregroundStyle(.red)
            detayVeriler.image.resizable()
            
            Button("Geri Dön") {
                dismiss()
            }
            .font(.system(size: 30 , weight: .bold))
        }
        .padding(.top,40)
    }
}

#Preview {
    FirstScreenUI()
}
