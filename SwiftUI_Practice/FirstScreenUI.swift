    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    
    @State private var alertShow = false
    
    var alertController = Alert(title: Text("Hata"), message: Text("Bu bir alert mesajıdır"), primaryButton: .default(Text("Tamam"), action: {}), secondaryButton: .cancel())
    
    var body: some View {
        Button("Show Alert") {
            alertShow = true
        }
        .alert("Alert Gösteriliyor", isPresented: $alertShow, actions: {})
    }
}

#Preview {
    FirstScreenUI()
}
