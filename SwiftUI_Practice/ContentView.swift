    //
    //  ContentView.swift
    //  SwiftUI_Practice
    //
    //  Created by Aytaç Bulanık on 26.01.2025.
    //

import SwiftUI


struct ContentView: View {
    let students = ["Ahmet","Ayşe","Hülya","Necmi"]
    @State private var selectedStudent = "Ahmet"
    var body: some View {
        NavigationStack {
            Form {
                Picker("Bir öğrenci seçin" , selection: $selectedStudent) {
                    ForEach(students , id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.inline)
                    
                    
            }
            .navigationTitle("Select a Student")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



#Preview {
    ContentView()
}

