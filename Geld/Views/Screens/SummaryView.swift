//
//  SummaryView.swift
//  Geld
//
//  Created by Logan Janssen on 13/7/2024.
//

import SwiftUI
import Foundation

struct SummaryView: View {
    
    @State var showCardSettingsSheet: Bool = false
    @ObservedObject var viewModel = SummaryViewModel()
     
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                CreditCardView(showCardSettingsSheet: $showCardSettingsSheet, nickname: "Everyday card", cardType: "AMERICAN EXPRESS", holderName: "LOGAN JANSSEN", cardCategory: "Debit Card")
                    
                BalanceInformation()
                
                MoneyButtons()
                    .padding(.top, -30)
                
                
                TransactionListView(transactions: viewModel.transactions)
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $showCardSettingsSheet) {
            AccountSettings()
        }
    }
}



#Preview {
    SummaryView()
        .preferredColorScheme(.dark)
}
