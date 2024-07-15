//
//  CardSettingsModel.swift
//  Geld
//
//  Created by Logan Janssen on 14/7/2024.
//

import Foundation
import SwiftUICore

@Observable
class AccountSettingsViewModel {
    
    var accountCategory = AccountCategory.debit
    var nickname = ""
    var nameOfHolder = ""
    var currency = Currency.aud
    var dynamicColourFlag: Bool = true
    var dynamicColour: String = ""
    var colour: Color = .blue
    var creditLimit: Double = 5000
    var userDefinedCreditLimit: Double = 200
    
    
    
}
