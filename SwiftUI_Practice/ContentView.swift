//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by Aytaç Bulanık on 26.01.2025.
//

import SwiftUI


struct ContentView: View {
    
    @State private var value = 2
    
    func nextPrime(after n: Int) -> Int {
        var x = n + 1
        while !isPrime(x) { x += 1 }
        return x
    }
    func previousPrime(before n: Int) -> Int {
        var x = max(2, n - 1)
        while x > 2 && !isPrime(x) { x -= 1 }
        return x
    }
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        for i in 2...Int(Double(n).squareRoot()) {
            if n % i == 0 { return false }
        }
        return true
    }
    
    
    var body: some View {
        
        Stepper {
            Text("Asal: \(value)")
        } onIncrement: {
            value = nextPrime(after: value)
        } onDecrement: {
            value = previousPrime(before: value)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

