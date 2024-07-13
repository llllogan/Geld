//
//  Expenses.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI

struct RecentTransactions: View {
    
    @State var transactions: [Transaction] = []
    
    var body: some View {
        
        Text("Recent Transactions")
            .font(.title)
            .bold()
            .padding(.top, 40)
        
        TransactionList(transactions: transactions)

    }
}
