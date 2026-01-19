    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    let lineerGradient = LinearGradient(colors: [.pink , .purple], startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        VStack {
            Button(action : {}) {
                Text("Click Me").bold().font(.largeTitle).padding().foregroundStyle(Color.white)
            }.background(lineerGradient)
                
        }
        
    }
}

#Preview {
    FirstScreenUI()
}
