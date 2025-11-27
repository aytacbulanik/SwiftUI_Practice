    //
    //  NavigationView_Ornek1.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 10.10.2025.
    //

import SwiftUI

struct FirstScreenUI : View {
    @State private var quantity = 1
    @State private var maxQuantity = 5
    var body: some View {
        HStack {
            Text("Miktar: \(quantity)")
            Spacer()
            Stepper("", value: $quantity, in: 1...maxQuantity)
                .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    FirstScreenUI()
}
