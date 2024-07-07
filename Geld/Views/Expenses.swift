//
//  Expenses.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI

struct RecentTransactions: View {
    var body: some View {
        
        Text("Recent Transactions")
            .font(.title)
            .bold()
            .padding(.top, 10)
        
        ExpensesList()

    }
}

// Main view
struct ExpensesList: View {
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Sun 07")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }
            
            Expense()
            Expense()
        }
    }
}

struct Expense: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.red)
                .cornerRadius(10)
                .frame(width: 10)
            VStack (alignment: .leading) {
                Text("Groceries from Woolies")
                    .font(.title3)
                    .lineLimit(1)
                HStack {
                    Label("9:05am", systemImage: "clock.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Label("Woolies", systemImage: "mappin.circle.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Text("$100")
                .fontDesign(.rounded)
                .bold()
                .font(.title3)
        }
    }
}
