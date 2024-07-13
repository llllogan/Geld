//
//  TransactionView.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import SwiftUI

// Main view
struct TransactionList: View {
    
    @State var transactions: [Transaction] = []
    
    var body: some View {
        
        VStack {
            ForEach(transactions) { transaction in
                TransactionView(purchaseCategoryColour: .red, title: "Fuel", amount: 45.0, time: "5:45am", locationName: "Brisbane")
            }
        }
                        
        GroupBox {
            HStack {
                Text("Sun 07")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }
            HStack {
                Text("Sun 06")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                VStack {
                    Divider()
                }
            }


        }
        .overlay {
            if transactions.isEmpty {
                ContentUnavailableView("No transactions", systemImage: "wallet.bifold", description: Text("You have not made any transactions this week."))
                    .offset(y: 60)
            }
        }
    }
}

struct TransactionView: View {
    
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
