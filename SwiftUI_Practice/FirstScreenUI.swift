    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    let angularGradient = AngularGradient(colors: [.pink,.purple,.pink], center: .center, angle: Angle(degrees: 90)) // center parametresi gradientin nerden başlayacağını gösteriyor. angle değeri ise açısal olarak yön vermemizi sağlıyor.
    
    let notAngularGradient = AngularGradient(colors: [.pink,.purple], center: .top, angle: Angle(degrees: 0))
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Angular Gradient Örnek").font(.largeTitle)
            
            Rectangle().fill(angularGradient)
            
            Rectangle().fill(notAngularGradient)
            
        }
        
    }
}

#Preview {
    FirstScreenUI()
}
