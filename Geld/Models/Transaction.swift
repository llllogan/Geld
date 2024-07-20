//
//  Transaction.swift
//  Geld
//
//  Created by Logan Janssen on 23/6/2024.
//

import Foundation
import SwiftData

@Model
class Transaction {
    
    var id: String
    var name: String
    var vendor: String
    var amount: Double
    var date: Date
    var location: String
    var category: Category
    
    init(name: String, vendor: String, amount: Double, date: Date, location: String, category: Category) {
        
        self.name = name
        self.vendor = vendor
        self.amount = amount
        self.date = date
        self.location = location
        self.category = category
        
        self.id = UUID().uuidString
    }
    
    var getTimeString: String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss" // or "hh:mm a" for 12-hour format with AM/PM

        let timeString = dateFormatter.string(from: self.date)
        return timeString
    }
    
        
}
