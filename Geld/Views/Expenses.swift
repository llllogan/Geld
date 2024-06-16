//
//  Expenses.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI

// Define a data model for expenses
struct Expense: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let amount: String
}

// Sample data
let pastTransactions = [
    Expense(title: "Groceries", subtitle: "Walmart", amount: "$120.00"),
    Expense(title: "Gas", subtitle: "Shell", amount: "$45.00"),
    Expense(title: "Your mum", subtitle: "Personal", amount: "$12.45")
]

let upcomingTransactions = [
    Expense(title: "Rent", subtitle: "July", amount: "$1500.00"),
    Expense(title: "Utilities", subtitle: "Electricity", amount: "$200.00")
]

// Custom view for a list item
struct ExpenseView: View {
    let expense: Expense
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(expense.title)
                    .font(.headline)
                Text(expense.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text(expense.amount)
                .font(.body)
                .foregroundColor(.black)
        }
        .padding(.horizontal)
    }
}

// Main view
struct ExpensesList: View {
    @State private var selectedOption = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Expenses")
                .font(.largeTitle)
                .bold()
                .padding(.top)
                .padding(.leading)
            
            Picker("Select Transactions", selection: $selectedOption) {
                Text("Past").tag(0)
                Text("Future").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing])
            
            List {
                if selectedOption == 0 {
                    ForEach(pastTransactions) { expense in
                        ExpenseView(expense: expense)
                    }
                } else {
                    ForEach(upcomingTransactions) { expense in
                        ExpenseView(expense: expense)
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}
