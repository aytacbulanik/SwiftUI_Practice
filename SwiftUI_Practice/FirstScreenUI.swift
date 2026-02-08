    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    @State private var iconColor: Color = .orange
    @State private var helpText: String = "Yardıma İhtiyacım var"

    var body: some View {
        VStack(spacing: 20) {
            Text("Context Menu Örnek 1")
                .font(.largeTitle)
                .foregroundStyle(.blue)

            HStack {
                Text(helpText)
                Spacer()
                Image(systemName: "questionmark.diamond.fill")
                    .font(.title)
                    .foregroundStyle(iconColor)
                    .frame(width: 50, height: 50)
                    .contextMenu {
                        Button {
                            // Rengi döngüsel değiştir
                            if iconColor == .orange {
                                iconColor = .cyan
                            } else if iconColor == .cyan {
                                iconColor = .green
                            } else {
                                iconColor = .orange
                            }
                        } label: {
                            Label("Renk değiştir", systemImage: "circle.lefthalf.fill")
                        }

                        Button {
                            helpText = "Destek talebin alındı!"
                        } label: {
                            Label("Destek Talebi Oluştur", systemImage: "paperplane")
                        }

                        Button(role: .destructive) {
                            iconColor = .orange
                            helpText = "Yardıma İhtiyacım var"
                        } label: {
                            Label("Sıfırla", systemImage: "arrow.counterclockwise")
                        }
                    }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    FirstScreenUI()
}
