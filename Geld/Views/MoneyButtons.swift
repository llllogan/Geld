//
//  MoneyButtons.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI
import Charts

struct MoneyButtons: View {
    
    func doAThing() {
        print("This is a button")
    }

    
    var body: some View {
        HStack {
            Button(action: doAThing) {
                Image(systemName: "banknote")
                Text("Add a pay slip")
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 30)
            }
            
            Button(action: doAThing) {
                Image(systemName: "cart")
                Text("Log a purchase")
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 30)
            }
        }
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)
    }
}
