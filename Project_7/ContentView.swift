//
//  ContentView.swift
//  Project_7
//
//  Created by Dieter Bergmann on 03.03.24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("AppCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
            UserDefaults.standard.setValue(tapCount, forKey: "TapCount")
        }
    }
}

#Preview {
    ContentView()
}
