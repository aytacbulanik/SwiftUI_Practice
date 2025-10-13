    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI: View {
    struct Country: Identifiable, Hashable {
        let id: UUID
        let name: String
        let code: String
    }

    @State private var countries: [Country] = [
        .init(id: UUID(), name: "Türkiye", code: "TR"),
        .init(id: UUID(), name: "Almanya", code: "DE"),
        .init(id: UUID(), name: "Fransa", code: "FR"),
        .init(id: UUID(), name: "İtalya", code: "IT")
    ]

    // selection: String (ülke code)
    @State private var selectedCode: String = "TR"

    // .onChange ile gösterim için basit log
    @State private var changeLog: [String] = []
    
    var body: some View {
        
        VStack(spacing : 20) {
                // 2) Menu Picker (dar alanlar için uygun)
                HStack {
                    Text("Ülke (Menu):")
                    Picker("Ülke (Menu)", selection: $selectedCode) {
                        ForEach(countries) { country in
                            Label(country.name, systemImage: "globe.europe.africa")
                                .tag(country.code)
                        }
                    }
                    .pickerStyle(.menu)
                    .tint(.blue) // menü butonunun vurgusu
                    .onChange(of: selectedCode) { oldValue, newValue in
                        if let oldName = countries.first(where: { $0.code == oldValue })?.name,
                           let newName = countries.first(where: { $0.code == newValue })?.name {
                            changeLog.append("Menu: \(oldName) -> \(newName)")
                        } else {
                            changeLog.append("Menu: \(oldValue) -> \(newValue)")
                        }
                    }
                }

                // Seçilen değeri göster
                if let selectedName = countries.first(where: { $0.code == selectedCode })?.name {
                    Text("Seçilen: \(selectedName) (\(selectedCode))")
                        .font(.headline)
                }
        }
        
    }
}


#Preview {
    FirstScreenUI()
}
