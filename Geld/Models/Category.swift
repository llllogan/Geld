//
//  SpendingCategories.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUICore
import SwiftData
import UIKit


struct PurchaseCategory {

    static let groceries = Category(name: "Groceries", colour: .green, symbol: "cart")
    static let housing = Category(name: "Housing", colour: .blue, symbol: "house")
    static let utilities = Category(name: "Utilities", colour: Color(.sRGB, red: 0.0, green: 0.5, blue: 1.0, opacity: 1.0), symbol: "bolt") // Light Blue
    static let transportation = Category(name: "Transportation", colour: .yellow, symbol: "car")
    static let healthcare = Category(name: "Healthcare", colour: .red, symbol: "heart")
    static let diningOut = Category(name: "Dining Out and Takeout", colour: .orange, symbol: "fork.knife")
    static let entertainment = Category(name: "Entertainment", colour: .purple, symbol: "play.rectangle")
    static let clothing = Category(name: "Clothing and Apparel", colour: .pink, symbol: "tshirt")
    static let electronics = Category(name: "Electronics", colour: Color(.sRGB, red: 0.0, green: 1.0, blue: 1.0, opacity: 1.0), symbol: "desktopcomputer") // Cyan
    static let personalCare = Category(name: "Personal Care", colour: Color(.sRGB, red: 1.0, green: 0.0, blue: 1.0, opacity: 1.0), symbol: "scissors") // Magenta
    static let travel = Category(name: "Travel", colour: Color(.sRGB, red: 0.53, green: 0.81, blue: 0.92, opacity: 1.0), symbol: "airplane") // Sky Blue
    static let education = Category(name: "Education", colour: Color(.sRGB, red: 0.0, green: 0.39, blue: 0.0, opacity: 1.0), symbol: "book") // Dark Green
    static let recreation = Category(name: "Recreation", colour: Color(.sRGB, red: 0.0, green: 0.5, blue: 0.5, opacity: 1.0), symbol: "sportscourt") // Teal
    static let householdSupplies = Category(name: "Household Supplies", colour: .brown, symbol: "house.fill")
    static let financialServices = Category(name: "Financial Services", colour: Color(.sRGB, red: 1.0, green: 0.84, blue: 0.0, opacity: 1.0), symbol: "dollarsign.circle") // Gold
    static let defaultCategory = Category(name: "", colour: .gray, symbol: "questionmark.circle")
    

    
}

@Model
class Category {
    
    let name: String
    @Attribute(.transformable(by: ColourTransformer.self)) let colour: UIColor
    let symbol: String
    
    init(name: String, colour: Color, symbol: String) {
        self.name = name
        self.colour = UIColor(colour)
        self.symbol = symbol
    }
    
}
