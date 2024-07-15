//
//  Account.swift
//  Geld
//
//  Created by Logan Janssen on 23/6/2024.
//

import Foundation
import SwiftData

@Model
class Account: Identifiable {
    
    var id: String
    var name: String
    var balance: Double
    var cashflowType: CashflowType
    var holdersName: String
    var creditLimit: Double
    var cycleLimit: Double
    var curreny: Currency
    var color: String
    var dynamicColor: ColourMatrix
    var dynamicColorFlag: Bool
    var hidden: Bool
    
    
    
    init(name: String, balance: Double, cashflowType: CashflowType, holdersName: String, creditLimit: Double, cycleLimit: Double, currency: Currency, color: String, dynamicColor: ColourMatrix, dynamicColorFlag: Bool, hidden: Bool) {
        
        self.name = name
        self.balance = balance
        self.cashflowType = cashflowType
        self.holdersName = holdersName
        self.creditLimit = creditLimit
        self.cycleLimit = cycleLimit
        self.curreny = currency
        self.color = color
        self.dynamicColor = dynamicColor
        self.dynamicColorFlag = dynamicColorFlag
        self.hidden = hidden
        
        self.id = UUID().uuidString
    }
}
