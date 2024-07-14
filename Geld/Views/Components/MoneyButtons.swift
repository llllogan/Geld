//
//  MoneyButtons.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI
import Charts

struct MoneyButtons: View {
    
    @ObservedObject var viewModel = MoneyButtonsModel()

    
    var body: some View {
            
        HStack {
            Button (action: { print("Second button") }) {
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

            Button (action: viewModel.togglePurchaseSheet) {
                GroupBox {
                    HStack {
                        VStack (alignment: .leading) {
                            Label("Add Purchase", systemImage: "cart.fill")
                                .labelStyle(.iconOnly)
                                .imageScale(.large)
                            Spacer()
                            Text("Add Purchase")
                                .fontWeight(.bold)
                                .tint(.primary)
                        }
                        Spacer()
                    }
                }
            }
            .sheet(isPresented: $viewModel.showAddPurchaseSheet) {
                AddPurchase()
            }
        }
    }
}
 
