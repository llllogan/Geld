//
//  ContentView.swift
//  Geld
//
//  Created by Logan Janssen on 13/6/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("$169")
                        .font(.system(size: 80, weight: .regular, design: .default))
                        .bold()
                    Text("/180")
                        .font(.title)
                        .foregroundColor(.gray)
                    Spacer()
                }
                Text("Balance remaining this week")
                    .font(.callout)
                    .foregroundColor(.gray)
                
                RemainingBalanceGraph()
                
                MoneyButtons()
                
                VStack(alignment: .leading) {
                    Text("Today's stats")
                        .font(.title)
                        .bold()
                    
                    MoneySpentToday(spent: 90)
                    
                    AverageSpendToday(spend: 76)
                    
                    MoneySpentToday(spent: 90)
                    
                    AverageSpendToday(spend: 76)


                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
            }
            .padding()
            
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
                            .foregroundColor(.red)
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
                        Label("Average spend on Sundays", systemImage: "plusminus.circle.fill")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text("$3 less than your current spend")
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
    MainTabbedView()
        .preferredColorScheme(.dark)
}




struct MyMesh: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                .init(0, 0), .init(0.5, 0), .init(1, 0),
                .init(0, 0.5), .init(0.3, 0.5), .init(1, 0.5),
                .init(0, 1), .init(0.5, 1), .init(1, 1)
            ],
            colors: [
                .red, .purple, .indigo,
                .orange, .cyan, .blue,
                .yellow, .green, .mint
            ]
        )
    }
}
