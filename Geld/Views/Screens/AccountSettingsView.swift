//
//  CardSettings.swift
//  Geld
//
//  Created by Logan Janssen on 4/7/2024.
//

import SwiftUI

struct AccountSettings: View {
    
    @ObservedObject var viewModel = AccountSettingsViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card"), footer: Text("You will recieve a notification when the balance of the account gets close to both credit limits")) {
                    List {
                        Picker("Card Type", selection: $viewModel.accountCategory) {
                            Text("Debit").tag(AccountCategory.debit)
                            Text("Credit").tag(AccountCategory.credit)
                            Text("Chequing").tag(AccountCategory.chequing)
                        }
                    }
                    HStack {
                        Text("Holder's Name")
                        Spacer()
                        TextField("Name on Card", text: $viewModel.nameOfHolder)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Credit Limit")
                        Spacer()
                        CurrencyField(value: $viewModel.creditLimit, displayText: "Credit Limit")
                    }
                    HStack {
                        Text("Soft Limit")
                        Spacer()
                        CurrencyField(value: $viewModel.userDefinedCreditLimit, displayText: "Custom Limit")
                    }

                }
                Section("Account") {
                    List {
                        Picker("Currency", selection: $viewModel.currency) {
                            Text("USD").tag(Currency.usd)
                            Text("CAD").tag(Currency.cad)
                            Text("EUR").tag(Currency.eur)
                            Text("GBP").tag(Currency.gbp)
                            Text("JPY").tag(Currency.jpy)
                            Text("AUD").tag(Currency.aud)
                        }
                    }
                    TextField("Account Nickname", text: $viewModel.nickname)
                }
                Section(footer: Text("Dynamic colour will change the colour of the card based on the categories of the purchases you make")) {
                    ColorPicker("Card Colour", selection: $viewModel.colour)
                        .disabled(viewModel.dynamicColourFlag)
                    Toggle(isOn: $viewModel.dynamicColourFlag) {
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
