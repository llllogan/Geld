//
//  GeldApp.swift
//  Geld
//
//  Created by Logan Janssen on 13/6/2024.
//

import SwiftUI
import SwiftData

@main
struct GeldApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabbedView()
        }
        .modelContainer(for: Transaction.self)
        .modelContainer(for: Account.self)
    }
}
