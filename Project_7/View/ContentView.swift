//
//  ContentView.swift
//  Project_7
//
//  Created by Dieter Bergmann on 03.03.24.
//

import SwiftUI



struct ContentView: View {
    @State private var expenses = Expenses()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: { indexSet in
                    expenses.items.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", tye: "Personal", amount: 5)
                    
                    expenses.items.append(expense)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
