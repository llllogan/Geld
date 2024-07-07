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
    @State private var NameOnCard = ""
    @State private var CurrencyOfAccount = Currency.aud
    @State private var ShowColourOnCard: Bool = true
    @State private var SelectedColor: Color = .blue
    @State private var CreditLimit: Double = 5000
    @State private var UserDefinedCreditLimit: Double = 200
    
    
    enum CardCategory: String, CaseIterable {
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
                        Picker("Card Type", selection: $CategoryOfCard) {
                            Text("Debit").tag(CardCategory.debit)
                            Text("Credit").tag(CardCategory.credit)
                            Text("Chequing").tag(CardCategory.chequing)
                        }
                    }
                    HStack {
                        Text("Holder's Name")
                        Spacer()
                        TextField("Name on Card", text: $NameOnCard)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Credit Limit")
                        Spacer()
                        CurrencyField(value: $CreditLimit, displayText: "Credit Limit")
                    }
                    HStack {
                        Text("Soft Limit")
                        Spacer()
                        CurrencyField(value: $UserDefinedCreditLimit, displayText: "Custom Limit")
                    }

                }
                Section("Account") {
                    List {
                        Picker("Currency", selection: $CurrencyOfAccount) {
                            Text("USD").tag(Currency.usd)
                            Text("CAD").tag(Currency.cad)
                            Text("EUR").tag(Currency.eur)
                            Text("GBP").tag(Currency.gbp)
                            Text("JPY").tag(Currency.jpy)
                            Text("AUD").tag(Currency.aud)
                        }
                    }
                    TextField("Account Nickname", text: $CardNickname)
                }
                Section(footer: Text("Dynamic colour will change the colour of the card based on the categories of the purchases you make")) {
                    ColorPicker("Card Colour", selection: $SelectedColor)
                        .disabled(ShowColourOnCard)
                    Toggle(isOn: $ShowColourOnCard) {
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
    CardSettings()
}
