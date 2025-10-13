//
//  SecondScreenUI.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 11.10.2025.
//

import SwiftUI

struct SecondScreenUI: View {
    
    // iOS 15+ modern kapatma API'si
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack (spacing: 30) {
                Text("Geri Butonu Gizli")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.top, 100)
                Text("Geri butonunu gizledik bu yüzden gözükmüyor.")
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .padding()
                Button("Geri git") {
                    dismiss() // aktif ekranı kapatır
                }
                Spacer()
            }
        }
    
    }
}

#Preview {
        SecondScreenUI()
}
