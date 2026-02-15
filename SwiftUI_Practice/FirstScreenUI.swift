    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    @State private var popupgorunsun = false
    @State private var kullaniciAdi = ""
    @State private var parola = ""
    @State private var girisBasarili = false
    
    var body: some View {
        ZStack {
            
            VStack(spacing : 20) {
                Text("Custom Menü Örnek -1 ")
                    .font(.system(size: 32 , weight: .bold))
                
                Text("Bir değişken ve Zstack ile kendi custom menümüzü oluşturabiliriz.")
                    .font(.title)
                
                VStack (spacing: 20) {
                    HStack {
                        Image(systemName: "person.fill")
                        TextField("Kullanıcı adınız..." , text: $kullaniciAdi)
                            .textFieldStyle(.automatic)
                            .padding(8)
                    }
                    .padding(.horizontal , 10)
                    .foregroundStyle(.orange)
                    .background(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.orange, lineWidth: 2)
                    }
                    HStack {
                        Image(systemName: "lock.circle.dotted")
                        TextField("Parolanız..." , text: $parola)
                            .textFieldStyle(.automatic)
                            .padding(8)
                    }
                    .padding(.horizontal , 10)
                    .foregroundStyle(.orange)
                    .background(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.orange, lineWidth: 2)
                    }
                    Button(action : {
                        self.popupgorunsun = true
                        
                        if self.kullaniciAdi == "Deneme" && self.parola == "1234" {
                            self.girisBasarili = true
                        } else {
                            self.girisBasarili = false
                        }
                    }) {
                        Text("GİRİŞ YAP")
                            .font(.title)
                    }
                    Spacer()
                }
                .padding()
                
                
            }
            .foregroundStyle(.orange)
            
            
            
            if $popupgorunsun.wrappedValue {
                ZStack {
                    Color.orange.opacity(0.7).edgesIgnoringSafeArea(.vertical)
                    
                    VStack(spacing : 20) {
                        
                        Text(girisBasarili ? "BAŞARILI" : "HATA" )
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .frame(maxWidth : .infinity)
                            .background(.orange)
                        Spacer()
                        Text (girisBasarili ? "Başarılı Giriş" : "Bilgiler hatalı" )
                            .foregroundStyle(girisBasarili ? .green : .red)
                        Spacer()
                        Button(action : {
                            self.popupgorunsun = false
                        }) {
                            Text("Kapat")
                        }
                        .padding(.bottom , 20)
                        
                        
                    }
                    .frame(width : 300, height : 200)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    
                }
                
            }
        }
    }
}


#Preview {
    FirstScreenUI()
}
