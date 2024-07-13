//
//  SummaryController.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import Foundation

class SummaryViewModel: ObservableObject {
    
    @Published var remainingBalance: Double = 0
    @Published var cycleLimit: Double = 0
    
    @Published var category: AccountCategory = .debit
    
    @Published var transactions: [Transaction] = [
        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport"),
        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport"),

        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport"),

        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport"),

        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport"),

        Transaction(name: "Fuel", vendor: "Caltex", amount: 45.67, date: Date(timeIntervalSinceNow: 0), location: "Gold Coast", category: "Transport")

    ]
    
}

