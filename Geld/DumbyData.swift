//
//  PetData.swift
//  BookstoreStategist
//
//  Created by Karin Prater on 20.07.23.
//

import Foundation

struct BalanceDuringWeek: Identifiable, Equatable {
    
    let day: String
    let balance: Double
    let id = UUID()
    
    static var data: [BalanceDuringWeek] {
        [BalanceDuringWeek(day: "Monday", balance: 189),
         BalanceDuringWeek(day: "Tuesday", balance: 148),
         BalanceDuringWeek(day: "Wednesday", balance: 130),
         BalanceDuringWeek(day: "Thursday", balance: 121),
         BalanceDuringWeek(day: "Friday", balance: 121),
         BalanceDuringWeek(day: "Saturday", balance: 121),
         BalanceDuringWeek(day: "Sunday", balance: 121)
        ]
    }
}



