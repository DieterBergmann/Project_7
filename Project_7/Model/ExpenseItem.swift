//
//  ExpenseItem.swift
//  Project_7
//
//  Created by Dieter Bergmann on 05.03.24.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let tye: String
    let amount: Double
}
