//
//  BalanceInformation.swift
//  Geld
//
//  Created by Logan Janssen on 6/7/2024.
//

import SwiftUI

struct BalanceInformation: View {
    var body: some View {
        HStack {
            Text("$169")
                .font(.system(size: 80, weight: .regular, design: .rounded))
                .bold()
            Text("/180")
                .font(.title).fontDesign(.rounded)
                .foregroundColor(.gray)
        }
    }
}
