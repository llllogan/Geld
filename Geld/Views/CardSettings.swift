//
//  CardSettings.swift
//  Geld
//
//  Created by Logan Janssen on 4/7/2024.
//

import SwiftUI

struct AccountSettings: View {
    
    @State private var accountCategory = AccountCategory.debit
    @State private var nickname = ""
    @State private var nameOfHolder = ""
    @State private var currency = Currency.aud
    @State private var dynamicColour: Bool = true
    @State private var colour: Color = .blue
    @State private var creditLimit: Double = 5000
    @State private var userDefinedCreditLimit: Double = 200
    
    
    enum AccountCategory: String, CaseIterable {
        case debit, credit, chequing
        var id: Self { self }
    }
    
    enum Currency: String, CaseIterable {
        case usd, cad, eur, gbp, jpy, aud
        var id: Self { self }
    }

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card"), footer: Text("You will recieve a notification when the balance of the account gets close to both credit limits")) {
                    List {
                        Picker("Card Type", selection: $accountCategory) {
                            Text("Debit").tag(AccountCategory.debit)
                            Text("Credit").tag(AccountCategory.credit)
                            Text("Chequing").tag(AccountCategory.chequing)
                        }
                    }
                    HStack {
                        Text("Holder's Name")
                        Spacer()
                        TextField("Name on Card", text: $nameOfHolder)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Credit Limit")
                        Spacer()
                        CurrencyField(value: $creditLimit, displayText: "Credit Limit")
                    }
                    HStack {
                        Text("Soft Limit")
                        Spacer()
                        CurrencyField(value: $userDefinedCreditLimit, displayText: "Custom Limit")
                    }

                }
                Section("Account") {
                    List {
                        Picker("Currency", selection: $currency) {
                            Text("USD").tag(Currency.usd)
                            Text("CAD").tag(Currency.cad)
                            Text("EUR").tag(Currency.eur)
                            Text("GBP").tag(Currency.gbp)
                            Text("JPY").tag(Currency.jpy)
                            Text("AUD").tag(Currency.aud)
                        }
                    }
                    TextField("Account Nickname", text: $nickname)
                }
                Section(footer: Text("Dynamic colour will change the colour of the card based on the categories of the purchases you make")) {
                    ColorPicker("Card Colour", selection: $colour)
                        .disabled(dynamicColour)
                    Toggle(isOn: $dynamicColour) {
                        Text("Dynamic color")
                    }
                }

                Section {
                    Button(role: .none, action: {print("Hide Account")}) {
                        Text("Hide Account")
                    }
                    Button(role: .destructive, action: {print("Delete account")}) {
                        Text("Delete Account")
                    }
                    .disabled(false)
                }
            }
            .navigationTitle("Account Settings")
        }
    }
}



#Preview {
    AccountSettings()
}
