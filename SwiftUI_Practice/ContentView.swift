//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
   
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                VStack(spacing: 20) {
                    Image(systemName: "circle")
                    Text("Bu ilk metin etiketinin yerleştirildiği yerdir.")
                }.font(.largeTitle)
                    .foregroundStyle(.white)
                Spacer()
            }
            .navigationBarTitle(Text("Navigation") , displayMode : .inline) //üst tarafta görünecek navigation bara ait metini giriyoruz. display mode ile de boyutunu ayarlıyoruz.
            
        }
       
    }
    
}


#Preview {
    ContentView()
}

