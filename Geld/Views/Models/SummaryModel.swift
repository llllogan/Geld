//
//  SummaryController.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import Foundation

@Observable
class SummaryViewModel {
    
    var showCardSettingSheet: Bool = false
    var showAddPurchaseSheet: Bool = false
    var showTopUpSheet: Bool = false
    
    var remainingBalance: Double = 0
    var cycleLimit: Double = 0
    
    var category: AccountCategory = .debit
    
    var transactions: [Transaction] = []
    
}

