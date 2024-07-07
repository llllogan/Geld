//
//  AddPurchase.swift
//  Geld
//
//  Created by Logan Janssen on 7/7/2024.
//

import SwiftUI

struct AddPurchase: View {
    
    var body: some View {
        VStack {
            GroupBox {
                Expense(purchaseCategoryColour: .yellow, title: "Purchase", amount: 0, time: "5:57pm", locationName: "Home")
                    .frame(height: 70)
            }
            .padding()
            Spacer()
            
        }
        
    }
}

#Preview {
    AddPurchase()
}
