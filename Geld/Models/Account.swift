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
    var cashflowType: CashflowType
    var holdersName: String
    var creditLimit: Double
    var cycleLimit: Double
    var curreny: Currency
    var colour: String
    var dynamicColour: ColourMatrix
    var dynamicColourFlag: Bool
    var hidden: Bool
    
    
    
    init(name: String, balance: Double, cashflowType: CashflowType, holdersName: String, creditLimit: Double, cycleLimit: Double, currency: Currency, colour: String, dynamicColour: ColourMatrix, dynamicColourFlag: Bool, hidden: Bool) {
        
        self.name = name
        self.balance = balance
        self.cashflowType = cashflowType
        self.holdersName = holdersName
        self.creditLimit = creditLimit
        self.cycleLimit = cycleLimit
        self.curreny = currency
        self.colour = colour
        self.dynamicColour = dynamicColour
        self.dynamicColourFlag = dynamicColourFlag
        self.hidden = hidden
        
        self.id = UUID().uuidString
    }
}
