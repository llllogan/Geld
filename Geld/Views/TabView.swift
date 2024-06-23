//
//  TabView.swift
//  Geld
//
//  Created by Logan Janssen on 18/6/2024.
//
import SwiftUI

struct MainTabbedView: View {
    
    var body: some View {
        
        TabView {
            Tab("Summary", systemImage: "creditcard.fill") {
                ContentView()
                
            }
            Tab("Accounts", systemImage: "wallet.bifold.fill") {
                ContentView()
            }
        }
    }
}
