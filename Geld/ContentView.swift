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
     
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                CreditCardView()
                    .frame(maxWidth: .infinity)
                
                
                HStack {
                    Text("$169")
                        .font(.system(size: 80, weight: .regular, design: .rounded))
                        .bold()
                    Text("/180")
                        .font(.title).fontDesign(.rounded)
                        .foregroundColor(.gray)
                }
                Text("Balance remaining this week")
                    .font(.callout)
                    .foregroundColor(.gray)
                
                MoneyButtons()
                
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
