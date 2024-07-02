//
//  Card.swift
//  Geld
//
//  Created by Logan Janssen on 3/7/2024.
//

import SwiftUI

struct CreditCardView: View {
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
                                    Text("Card nick name")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .bold()
                                    Spacer()
                                    Text("VISA")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                Spacer()
                                Text("LOGAN JANSSEN")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                Text("Debit Card")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                            .padding()
                        )
                }
            }
            .frame(height: UIScreen.main.bounds.width * 0.5) // Ensure enough height for the card with padding
            
        }
    }
}
