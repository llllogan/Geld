//
//  AddPurchaseModel.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUICore

@Observable
class AddPurchaseViewModel {
    
    var name = ""
    var amount = ""
    var date = Date()
    var category = ""
    var reoccurance: Reoccurence = .none
    
    func isDateInFuture() -> Bool {

        // Get the current date and time
        let currentDateTime = Date()

        // Check if the target date and time is in the future
        return self.date > currentDateTime
    }
    
}
