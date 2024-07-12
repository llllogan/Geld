//
//  Expenses.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI

struct RecentTransactions: View {
    var body: some View {
        
        Text("Recent Transactions")
            .font(.title)
            .bold()
            .padding(.top, 40)
        
        ExpensesList()

    }
}

// Main view
struct ExpensesList: View {
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Sun 07")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }
            Expense(purchaseCategoryColour: .red, title: "Woolworths", amount: 80.90, time: "9:05am", locationName: "South City Square")
            Expense(purchaseCategoryColour: .blue, title: "BWS", amount: 34.45, time: "8:45pm", locationName: "South City Square")
            HStack {
                Text("Sun 06")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }
            Expense(purchaseCategoryColour: .green, title: "Caltex", amount: 103, time: "8:49pm", locationName: "Cabulture")
        }
    }
}

struct Expense: View {
    
    @State var purchaseCategoryColour: Color
    @State var title: String
    @State var amount: Double
    @State var time: String
    @State var locationName: String
    
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(purchaseCategoryColour)
                .cornerRadius(10)
                .frame(width: 10)
            VStack (alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .lineLimit(1)
                HStack {
                    Label(time, systemImage: "clock.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Label(locationName, systemImage: "mappin.circle.fill")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                }
            }
            Spacer()
            Text("$\(self.amount.formattedString())")
                .fontDesign(.rounded)
                .bold()
                .font(.headline)
        }
    }
}
