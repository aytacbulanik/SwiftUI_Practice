    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    
    @State private var gorunsunPopover = false
    var body: some View {
        ZStack {
            Color.black
            
            Button(action : {
                self.gorunsunPopover = true
            }, label : {
                Text("Tıkla").font(.largeTitle).foregroundStyle(.white)
            })
            .popover(isPresented: $gorunsunPopover, arrowEdge : .top) {
                VStack(spacing: 20) {
                    Text("Popover Örnek - 1")
                    Text("Bool değeri değişti ve popover bu yüzden göründü").font(.title)
                        .foregroundStyle(.cyan)
                        .background(.gray)
                }
                .padding()
            }
            
        }
        .edgesIgnoringSafeArea(.vertical)
        
    }
    
}


#Preview {
    FirstScreenUI()
}
