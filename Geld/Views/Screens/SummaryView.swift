//
//  SummaryView.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import SwiftUI
import Foundation

struct SummaryView: View {
    
    @ObservedObject var viewModel = SummaryViewModel()
     
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                CreditCardView(showCardSettingsSheet: $viewModel.showCardSettingSheet, nickname: "Everyday card", cardType: "AMERICAN EXPRESS", holderName: "LOGAN JANSSEN", cardCategory: "Debit Card")
                    
                BalanceInformation()
                
                MoneyButtons()
                    .padding(.top, -30)
                
                
                TransactionListView(transactions: viewModel.transactions)
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $viewModel.showCardSettingSheet) {
            AccountSettings()
        }
    }
}



#Preview {
    SummaryView()
        .preferredColorScheme(.dark)
}
