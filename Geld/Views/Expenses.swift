//
//  Expenses.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI
import Combine

struct Purchase: Identifiable {
    let id = UUID()
    let category: Category
    let amount: Double
    let date: Date
    let title: String
    let description: String
    let vendor: String
}

struct Category {
    let name: String
    let color: Color
}

class PurchasesViewModel: ObservableObject {
    @Published var groupedPurchases = [String: [Purchase]]()
    
    init(purchases: [Purchase]) {
        self.groupedPurchases = Dictionary(grouping: purchases, by: { purchase in
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: purchase.date)
        })
    }
}

import SwiftUI

struct PurchasesListView: View {
    @ObservedObject var viewModel: PurchasesViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.groupedPurchases.keys.sorted(), id: \.self) { date in
                    Section(header: Text(date)) {
                        ForEach(viewModel.groupedPurchases[date] ?? []) { purchase in
                            PurchaseRow(purchase: purchase)
                        }
                    }
                }
            }
            .navigationBarTitle("Purchases")
        }
    }
}

struct PurchaseRow: View {
    let purchase: Purchase
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(purchase.title)
                .font(.headline)
            Text(purchase.vendor)
                .font(.subheadline)
            Text("\(purchase.amount, specifier: "%.2f")")
                .font(.subheadline)
            Text(purchase.description)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(purchase.category.color.opacity(0.1))
        .cornerRadius(8)
    }
}

func generateSampleData() -> [Purchase] {
    let categories = [
        Category(name: "Food", color: .green),
        Category(name: "Transport", color: .blue),
        Category(name: "Entertainment", color: .red),
        Category(name: "Groceries", color: .orange),
        Category(name: "Utilities", color: .purple)
    ]
    
    var purchases = [Purchase]()
    
    let calendar = Calendar.current
    for dayOffset in 0..<14 {
        for _ in 0..<2 {
            let randomCategory = categories.randomElement()!
            let randomAmount = Double.random(in: 5.0...100.0)
            let randomTitle = ["Lunch", "Bus Fare", "Movie Ticket", "Groceries", "Electric Bill"].randomElement()!
            let randomDescription = ["Delicious meal", "Public transport", "Cinema experience", "Weekly shopping", "Monthly bill"].randomElement()!
            let randomVendor = ["Cafe", "City Bus", "Cineplex", "Supermarket", "Utility Company"].randomElement()!
            
            let date = calendar.date(byAdding: .day, value: -dayOffset, to: Date())!
            
            let purchase = Purchase(
                category: randomCategory,
                amount: randomAmount,
                date: date,
                title: randomTitle,
                description: randomDescription,
                vendor: randomVendor
            )
            
            purchases.append(purchase)
        }
    }
    
    return purchases
}



// Main view
struct ExpensesList: View {
    
    var body: some View {
        
        let sampleData = generateSampleData()
        let viewModel = PurchasesViewModel(purchases: sampleData)
        return PurchasesListView(viewModel: viewModel)

        
//        VStack(alignment: .leading) {
//            Text("Recent purchases")
//                .font(.title)
//                .bold()
//                .padding(.top)
//            
//        }
    }
}
