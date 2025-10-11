//
//  NavigationView_Ornek1.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 10.10.2025.
//

import SwiftUI

struct NavigationView_Ornek1: View {
    
    @State var isOnState : Bool = true
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    
                    Text("NAvigationview ı gizlemek istiyorsanız hidden metodunu kullanmanız gerekir")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.white)
                    Toggle(isOn: $isOnState) {
                        Text(isOnState ? "Açık mı?" : "Kapalı mı?") // yanına yazılacak ifadeyi giriyoruz.
                            .foregroundStyle(.white)
                    }
                    .padding()
                    
                    Spacer()
                }
            }
            .navigationTitle("Navigation View")//navigation barda yazanı belirliyoruz.
            .navigationBarTitleDisplayMode(.inline) // tek satırlık küçük hale getiriyor.
            .navigationBarHidden(isOnState) //bool tipinde bir değer gönderdiğimizde navigation barı açmaya ve kapatmaya yarıyor
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Ekle") {
                        // action here
                    }
                }
            }// navigation bara buton eklemek için bunu kullanıyoruz. artık toolbar ile gidiliyor. barbuttonitem kaldırılıyor.
        }
    }
}

#Preview {
    NavigationView_Ornek1()
}
