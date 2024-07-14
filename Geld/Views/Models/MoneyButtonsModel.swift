//
//  MoneyButtonsModel.swift
//  Geld
//
//  Created by Logan Janssen on 14/7/2024.
//

import Foundation

class MoneyButtonsModel: ObservableObject {
    
    @Published var showAddPurchaseSheet: Bool = false
    @Published var showTopUpSheet: Bool = false
    
    func togglePurchaseSheet() {
        showAddPurchaseSheet.toggle()
    }
    
    func toggleTopUpSheet() {
        showTopUpSheet.toggle()
    }
    
    
}
