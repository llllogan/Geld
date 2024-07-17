//
//  TransactionView.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import SwiftUI

// Main view
struct TransactionListView: View {
    
    @State var transactions: [Transaction] = []
    
    var body: some View {
        
        if !transactions.isEmpty {
            
            Text("Recent Transactions")
                .font(.title)
                .bold()
                .padding(.top, 40)

            HStack {
                Text("Sun 07")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }
            VStack {
                ForEach(transactions) { transaction in
                    TransactionView(transaction: transaction)
                }
            }
        } else {
            ContentUnavailableView("No transactions", systemImage: "wallet.bifold", description: Text("You have not made any transactions this week."))
                .offset(y: 50)
        }
    }
}

struct TransactionView: View {
    
    @State var transaction: Transaction
    
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(Color(transaction.category.colour))
                .cornerRadius(10)
                .frame(width: 10)
            VStack (alignment: .leading) {
                Text(transaction.name)
                    .font(.headline)
                    .lineLimit(1)
                HStack {
                    Label(transaction.getTimeString, systemImage: "clock.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Label(transaction.location, systemImage: "mappin.circle.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                }
            }
            Spacer()
            Text("$\(transaction.amount.formattedString())")
                .fontDesign(.rounded)
                .bold()
                .font(.headline)
        }
    }
}
