//
//  NavigationView_Ornek1.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 10.10.2025.
//

import SwiftUI

struct NavigationView_Ornek1: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                VStack(spacing: 20) {
                    Image(systemName: "globe")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    Text("Deneme")
                        .foregroundStyle(Color.green)
                        .font(.largeTitle)
                    Text("Navigation view da title eklemezsek aktif olmaz.bu yüzden ilk anda görünmeyebilir")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.white)
                    Spacer()
                }
            }
            .navigationTitle("Navigation View")
            .navigationBarTitleDisplayMode(.inline) // tek satırlık küçük hale getiriryor.
        }
    }
}

#Preview {
    NavigationView_Ornek1()
}
