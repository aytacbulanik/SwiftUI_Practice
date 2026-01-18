    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Insent Örnek").font(.largeTitle)
            
            Circle().inset(by: 30) // şekilin frame ile arasına boşluk bırakıyor. padding gibi davranıyor. insent sadece şekilllere verilir.
        }
        
    }
}

#Preview {
    FirstScreenUI()
}
