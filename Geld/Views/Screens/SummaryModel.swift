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
    
    @Published var transactions: [Transaction] = []
    
}

