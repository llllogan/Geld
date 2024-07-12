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
    
    let container: ModelContainer = {
        let schema = Schema([Transaction.self, Account.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}
