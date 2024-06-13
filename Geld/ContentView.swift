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
            
            VStack {
                HStack {
                    Text("$169")
                        .padding()
                        .bold()
                    Text("/ 183")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                }
            }
            .background(MyMesh())
            
        }
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
}
