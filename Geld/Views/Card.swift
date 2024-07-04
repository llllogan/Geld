//
//  Card.swift
//  Geld
//
//  Created by Logan Janssen on 3/7/2024.
//

import SwiftUI

struct CreditCardView: View {
    
    let nickname: String
    let cardType: String
    let holderName: String
    let cardCategory: String
    
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                let cardWidth = geometry.size.width // Padding adjustment
                let cardHeight = cardWidth * 0.6 // Adjust the aspect ratio as needed (e.g., 0.6 for a 3:5 ratio)
                
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: cardWidth, height: cardHeight)
                        .overlay(
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(nickname)
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .bold()
                                    Spacer()
                                    Text(cardType)
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                Spacer()
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text(holderName)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                        Text(cardCategory)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    NavigationLink(destination: CardSettingsView()) {
                                        Image(systemName: "gearshape.fill")
                                            .foregroundColor(Color.white.opacity(0.5))
                                            .padding(10)
                                            .background(Color.black.opacity(0.1))
                                            .clipShape(Circle())
                                    }
                                }
                            }
                            .padding()
                        )
                }
            }
            .frame(height: UIScreen.main.bounds.width * 0.5) // Ensure enough height for the card with padding
            
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



struct CardSettingsView: View {
    var body: some View {
        Text("Card Settings")
            .font(.largeTitle)
            .navigationBarTitle("Settings", displayMode: .inline)
    }
}
