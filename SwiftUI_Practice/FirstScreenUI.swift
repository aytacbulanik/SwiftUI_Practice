    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    
    @State private var showAlert = false // alertin aktif olmasını sağlayan değişkendir. alerte parametre olarak göndereceğiz.
    var body: some View {
        Button("Alert Göster"){
            showAlert = true
        }
        .alert("Silme İşlemi", isPresented: $showAlert) {
            Button("İptal", role: .cancel) { }
            Button("Sil", role: .destructive) {
                // Silme işlemini yap
            }
        } message: {
            Text("Bu öğeyi silmek istediğinizden emin misiniz?")
        }
        
    }
}

#Preview {
    FirstScreenUI()
}
