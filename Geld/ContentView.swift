//
//  ContentView.swift
//  Geld
//
//  Created by Logan Janssen on 13/6/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Balance remaining this week")
                .font(.caption)
                .foregroundColor(.gray)
            HStack {
                Text("$169")
                    .font(.system(size: 80, weight: .regular, design: .default))
                    .bold()
                Text("/180")
                    .font(.title)
                    .foregroundColor(.gray)
                Spacer()
            }
            
            RemainingBalanceGraph()
            
            MoneyButtons()
            
            
        }
        .padding()
        
        ExpensesList()
    }
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

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
