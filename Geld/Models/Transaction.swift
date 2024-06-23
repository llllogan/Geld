//
//  Transaction.swift
//  Geld
//
//  Created by Logan Janssen on 23/6/2024.
//

import Foundation
import SwiftData

@Model
class Transaction: Identifiable {
    
    var id: String
    var name: String
    var vendor: String
    var amount: Double
    var date: Date
    
    init(name: String, vendor: String, amount: Double, date: Date) {
        
        self.name = name
        self.vendor = vendor
        self.amount = amount
        self.date = date
        
        self.id = UUID().uuidString
    }
    
        
}
