//
//  SpendingCategories.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUI

class PurchaseCategory: Identifiable, Codable {
    var id = UUID()
    let name: String
    let color: Color
    let symbol: String
    
    private init(name: String, color: Color, symbol: String) {
        self.name = name
        self.color = color
        self.symbol = symbol
    }
    
    static let groceries = PurchaseCategory(name: "Groceries", color: .green, symbol: "cart")
    static let housing = PurchaseCategory(name: "Housing", color: .blue, symbol: "house")
    static let utilities = PurchaseCategory(name: "Utilities", color: Color(.sRGB, red: 0.0, green: 0.5, blue: 1.0, opacity: 1.0), symbol: "bolt") // Light Blue
    static let transportation = PurchaseCategory(name: "Transportation", color: .yellow, symbol: "car")
    static let healthcare = PurchaseCategory(name: "Healthcare", color: .red, symbol: "heart")
    static let diningOut = PurchaseCategory(name: "Dining Out and Takeout", color: .orange, symbol: "fork.knife")
    static let entertainment = PurchaseCategory(name: "Entertainment", color: .purple, symbol: "play.rectangle")
    static let clothing = PurchaseCategory(name: "Clothing and Apparel", color: .pink, symbol: "tshirt")
    static let electronics = PurchaseCategory(name: "Electronics", color: Color(.sRGB, red: 0.0, green: 1.0, blue: 1.0, opacity: 1.0), symbol: "desktopcomputer") // Cyan
    static let personalCare = PurchaseCategory(name: "Personal Care", color: Color(.sRGB, red: 1.0, green: 0.0, blue: 1.0, opacity: 1.0), symbol: "scissors") // Magenta
    static let travel = PurchaseCategory(name: "Travel", color: Color(.sRGB, red: 0.53, green: 0.81, blue: 0.92, opacity: 1.0), symbol: "airplane") // Sky Blue
    static let education = PurchaseCategory(name: "Education", color: Color(.sRGB, red: 0.0, green: 0.39, blue: 0.0, opacity: 1.0), symbol: "book") // Dark Green
    static let recreation = PurchaseCategory(name: "Recreation", color: Color(.sRGB, red: 0.0, green: 0.5, blue: 0.5, opacity: 1.0), symbol: "sportscourt") // Teal
    static let householdSupplies = PurchaseCategory(name: "Household Supplies", color: .brown, symbol: "house.fill")
    static let financialServices = PurchaseCategory(name: "Financial Services", color: Color(.sRGB, red: 1.0, green: 0.84, blue: 0.0, opacity: 1.0), symbol: "dollarsign.circle") // Gold
    
    static let allCategories = [
        groceries, housing, utilities, transportation, healthcare, diningOut, entertainment, clothing,
        electronics, personalCare, travel, education, recreation, householdSupplies, financialServices
    ]
}
