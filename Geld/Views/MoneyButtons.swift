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
                Image(systemName: "banknote.fill")
                Text("Top up")
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 25)
            }
            
            Button(action: doAThing) {
                Image(systemName: "cart.fill")
                Text("Log purchase")
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 25)
            }

        }
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)
    }
}
 
