//
//  SpendingCategories.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUICore
import SwiftData
import UIKit


let PurchaseCategories = [

    Category(name: "Groceries", colour: .green, symbol: "cart"),
    Category(name: "Housing", colour: .blue, symbol: "house"),
    Category(name: "Utilities", colour: Color(.sRGB, red: 0.0, green: 0.5, blue: 1.0, opacity: 1.0), symbol: "bolt"), // Light Blue
    Category(name: "Transportation", colour: .yellow, symbol: "car"),
    Category(name: "Healthcare", colour: .red, symbol: "heart"),
    Category(name: "Dining Out and Takeout", colour: .orange, symbol: "fork.knife"),
    Category(name: "Entertainment", colour: .purple, symbol: "play.rectangle"),
    Category(name: "Clothing and Apparel", colour: .pink, symbol: "tshirt"),
    Category(name: "Electronics", colour: Color(.sRGB, red: 0.0, green: 1.0, blue: 1.0, opacity: 1.0), symbol: "desktopcomputer"), // Cyan
    Category(name: "Personal Care", colour: Color(.sRGB, red: 1.0, green: 0.0, blue: 1.0, opacity: 1.0), symbol: "scissors"), // Magenta
    Category(name: "Travel", colour: Color(.sRGB, red: 0.53, green: 0.81, blue: 0.92, opacity: 1.0), symbol: "airplane"), // Sky Blue
    Category(name: "Education", colour: Color(.sRGB, red: 0.0, green: 0.39, blue: 0.0, opacity: 1.0), symbol: "book"), // Dark Green
    Category(name: "Recreation", colour: Color(.sRGB, red: 0.0, green: 0.5, blue: 0.5, opacity: 1.0), symbol: "sportscourt"), // Teal
    Category(name: "Household Supplies", colour: .brown, symbol: "house.fill"),
    Category(name: "Financial Services", colour: Color(.sRGB, red: 1.0, green: 0.84, blue: 0.0, opacity: 1.0), symbol: "dollarsign.circle"), // Gold
    Category(name: "", colour: .gray, symbol: "questionmark.circle")
]

    

@Model
class Category {
    
    let name: String
    @Attribute(.transformable(by: ColourTransformer.self)) 
    let colour: UIColor
    let symbol: String
    
    init(name: String, colour: Color, symbol: String) {
        self.name = name
        self.colour = UIColor(colour)
        self.symbol = symbol
    }
    
}
