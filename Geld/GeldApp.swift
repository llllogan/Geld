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
    init() {
        ColourTransformer.register()
    }
    
    var container: ModelContainer = {
        ColourTransformer.register()
        let schema = Schema([Transaction.self, Account.self])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Failed to create model container wamp wamp: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            SummaryView()
        }
        .modelContainer(container)
    }
}
