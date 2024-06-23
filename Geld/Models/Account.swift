//
//  Account.swift
//  Geld
//
//  Created by Logan Janssen on 23/6/2024.
//
import Foundation
import SwiftData

@Model
class Account {
    
    var id: String
    var name: String
    var balance: Double
    
    init(name: String, balance: Double) {
        
        self.name = name
        self.balance = balance
        
        self.id = UUID().uuidString
    }
}
