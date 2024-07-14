//
//  AddPurchaseModel.swift
//  Geld
//
//  Created by Logan Janssen on 14/7/2024.
//

import Foundation

class AddPurchaseViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var amount: String = ""
    @Published var date: Date = Date()
    @Published var time: TimeInterval = 0
    @Published var category = ""
    @Published var reoccurance: Reoccurence = .none
    
    
    func isDateInFuture() -> Bool {
        
        // Get the current date and time
        let currentDateTime = Date()
        
        // Check if the target date and time is in the future
        return self.date > currentDateTime
    }
}
