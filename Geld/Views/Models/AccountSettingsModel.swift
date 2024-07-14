//
//  CardSettingsModel.swift
//  Geld
//
//  Created by Logan Janssen on 14/7/2024.
//

import Foundation
import SwiftUICore

class AccountSettingsViewModel: ObservableObject {
    
    @Published var accountCategory = AccountCategory.debit
    @Published var nickname = ""
    @Published var nameOfHolder = ""
    @Published var currency = Currency.aud
    @Published var dynamicColourFlag: Bool = true
    @Published var dynamicColour: String = ""
    @Published var colour: Color = .blue
    @Published var creditLimit: Double = 5000
    @Published var userDefinedCreditLimit: Double = 200
    
    
    
}
