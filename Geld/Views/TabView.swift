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
            ContentView()
                .tabItem {
                    Label("Summary", systemImage: "creditcard.fill")
                }
            
            ContentView()
                .tabItem {
                    Label("Accounts", systemImage: "wallet.bifold.fill")
                }
        }
    }
}
