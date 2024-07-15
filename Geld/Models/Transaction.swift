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
    var location: String
    var category: PurchaseCategory
    
    init(name: String, vendor: String, amount: Double, date: Date, location: String, category: PurchaseCategory) {
        
        self.name = name
        self.vendor = vendor
        self.amount = amount
        self.date = date
        self.location = location
        self.category = category
        
        self.id = UUID().uuidString
    }
    
        
}
