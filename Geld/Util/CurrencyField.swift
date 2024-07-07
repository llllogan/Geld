//
//  DoubleInput.swift
//  Geld
//
//  Created by Logan Janssen on 7/7/2024.
//

import SwiftUI

struct CurrencyField: View {
    @Binding var value: Double
    @State var displayText: String
    @State var doubleAsText: String = ""
    
    var body: some View {
        
        TextField(displayText, text: $doubleAsText)
            .multilineTextAlignment(.trailing)
            .keyboardType(.numberPad)
            .onChange(of: doubleAsText, initial: true) {                
                let newValue = doubleAsText
                let filtered = newValue.filter { "0123456789.".contains($0) }
                if filtered != newValue {
                    self.doubleAsText = "$\(filtered)"
                }
                
                if let doubleValue = Double(filtered) {
                    self.value = doubleValue
                } else {
                    self.value = 0.0
                }
            }
            .onAppear {
                self.displayText = "$\(self.value)"
            }
    }
}

extension Double {
    func formattedString() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
