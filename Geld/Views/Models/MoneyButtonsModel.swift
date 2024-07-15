//
//  MoneyButtonsModel.swift
//  Geld
//
//  Created by Logan Janssen on 14/7/2024.
//

import Foundation

@Observable
class MoneyButtonsModel {
    
    var showAddPurchaseSheet: Bool = false
    var showTopUpSheet: Bool = false
    
    func togglePurchaseSheet() {
        showAddPurchaseSheet.toggle()
    }
    
    func toggleTopUpSheet() {
        showTopUpSheet.toggle()
    }
    
    
}
