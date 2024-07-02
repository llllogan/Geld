//
//  MoneyButtons.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI
import Charts

struct MoneyButtons: View {
    
    func doAThing() {
        print("This is a button")
    }

    
    var body: some View {
            
        HStack {
            Button (
                action: {
                    print("First button")
                },
                label: {
                    GroupBox {
                        HStack {
                            VStack (alignment: .leading) {
                                Label("Top up", systemImage: "plus.circle.fill")
                                    .labelStyle(.iconOnly)
                                    .imageScale(.large)
                                Spacer()
                                Text("Top up")
                                    .fontWeight(.bold)
                                    .tint(.primary)
                            }
                            Spacer()
                        }
                    }
                }
            )
            Button (
                action: {
                    print("First button")
                },
                label: {
                    GroupBox {
                        HStack {
                            VStack (alignment: .leading) {
                                Label("Log Purchase", systemImage: "cart.fill")
                                    .labelStyle(.iconOnly)
                                    .imageScale(.large)
                                Spacer()
                                Text("Log Purchase")
                                    .fontWeight(.bold)
                                    .tint(.primary)
                            }
                            Spacer()
                        }
                    }
                }
            )
        }
    }
}
 
