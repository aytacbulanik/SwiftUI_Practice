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
            Text("Dikdörtgen ilk örnek").font(.largeTitle).padding()
            Rectangle().padding()
            
            Rectangle().fill(Color.red).cornerRadius(10).padding()
            
            RoundedRectangle(cornerRadius: 20).padding().foregroundStyle(.blue)
            
            RoundedRectangle(cornerRadius: 10).stroke(Color.blue,lineWidth:4).padding()
        }
        
    }
}

#Preview {
    FirstScreenUI()
}
