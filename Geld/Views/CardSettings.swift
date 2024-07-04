//
//  CardSettings.swift
//  Geld
//
//  Created by Logan Janssen on 4/7/2024.
//

import SwiftUI

struct CardSettings: View {
    
    @State private var CategoryOfCard = CardCategory.debit
    @State private var CardNickname = ""
    
    
    enum CardCategory: String, CaseIterable {
        case debit, credit, chequing
        var id: Self { self }
    }

    
    var body: some View {
        NavigationView {
            Form {
                Section("Card") {
                    List {
                        Picker("Card Type", selection: $CategoryOfCard) {
                            Text("Debit").tag(CardCategory.debit)
                            Text("Credit").tag(CardCategory.credit)
                            Text("Chequing").tag(CardCategory.chequing)
                        }
                    }
                    TextField("Card nickname", text: $CardNickname)
                }
                Section("Spending") {
                    TextField("Amount", text: $CardNickname)
                }
                Section {
                    Button(role: .destructive, action: {print("Delete account")}) {
                        Text("Delete Account")
                    }
                    .disabled(true)
                }
            }
            .navigationTitle("Account Settings")
        }
    }
}



#Preview {
    CardSettings()
}
