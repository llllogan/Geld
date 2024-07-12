//
//  AccountCategory.swift
//  Geld
//
//  Created by Logan Janssen on 12/7/2024.
//

enum AccountCategory: String, CaseIterable {
    case debit, credit, chequing
    var id: Self { self }
}
