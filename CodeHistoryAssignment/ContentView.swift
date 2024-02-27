//
//  ContentView.swift
//  CodeHistoryAssignment
//
//  Created by Fred Tsui on 2/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    var body: some View {
        Text("Take me to your leader!")
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
