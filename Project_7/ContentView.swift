//
//  ContentView.swift
//  Project_7
//
//  Created by Dieter Bergmann on 03.03.24.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Heike", lastName: "Bergmann")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }

}

#Preview {
    ContentView()
}
