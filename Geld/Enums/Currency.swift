//
//  Currency.swift
//  Geld
//
//  Created by Logan Janssen on 12/7/2024.
//

enum Currency: String, CaseIterable {
    case usd, cad, eur, gbp, jpy, aud
    var id: Self { self }
}
