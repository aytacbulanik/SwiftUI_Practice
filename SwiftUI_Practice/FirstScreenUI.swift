    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI
struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let detail: String
}
struct FirstScreenUI : View {
    
    @State private var selection: Contact?

    let contacts = [
        Contact(name: "Ayşe", detail: "iOS Developer"),
        Contact(name: "Mehmet", detail: "Designer"),
        Contact(name: "Elif", detail: "QA Engineer")
    ]
    var body: some View {
        List(contacts) { contact in
            Button(contact.name) { selection = contact }
        }
        .popover(item: $selection, arrowEdge: .trailing) { selected in
            VStack(spacing: 8) {
                Text(selected.name).font(.title2).bold()
                Text(selected.detail)
                Button("Kapat") { selection = nil }
            }
            .padding()
        }
    }
    
}


#Preview {
    FirstScreenUI()
}
