//
//  ContentView.swift
//  Project_7
//
//  Created by Dieter Bergmann on 03.03.24.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 0
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("Row \($0)")
                }
                .onDelete(perform: removeRows)
//                .onDelete(perform: { indexSet in
//                    numbers.remove(atOffsets: indexSet)
//                })
            }
            .toolbar {
                EditButton()
            }
            
            Button("Add Number") {
                currentNumber += 1
                numbers.append(currentNumber)
            }
        }
    }
    
    func removeRows(offset: IndexSet) {
        numbers.remove(atOffsets: offset)
    }
}

#Preview {
    ContentView()
}
