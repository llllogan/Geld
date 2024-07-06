//
//  ContentView.swift
//  Geld
//
//  Created by Logan Janssen on 13/6/2024.
//



import SwiftUI
import Foundation

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @State var showCardSettingsSheet: Bool = false
     
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                CreditCardView(showCardSettingsSheet: $showCardSettingsSheet, nickname: "Everyday card", cardType: "AMERICAN EXPRESS", holderName: "LOGAN JANSSEN", cardCategory: "Debit Card")
                    
                BalanceInformation()
                
                MoneyButtons()
                    .padding(.top, -30)
                
                ExpensesList()
                
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $showCardSettingsSheet) {
            CardSettings()
        }
    }
}



struct MoneySpentToday: View {
    
    var spent: Int
    
    var body: some View {
        GroupBox {
            HStack {
                VStack {
                    HStack {
                        Label("Spent today", systemImage: "cart.fill")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                }
                Spacer()
                Text("$45")
                    .font(.title)
            }
        }
    }
}

struct AverageSpendToday: View {
    
    var spend: Int
    
    var body: some View {
        GroupBox {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Label("Average spend on Sundays", systemImage: "arrow.down.forward.circle.fill")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text("$3 less than your current spend")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("$48")
                    .font(.title)
            }
        }
    }
}

struct WeekProgressPieChart: View {
    
    var body: some View {
        GroupBox {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Label("Average spend on Sundays", systemImage: "arrow.down.forward.circle.fill")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text("$3 less than your current spend")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("$48")
                    .font(.title)
            }
        }

    }
}




#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
