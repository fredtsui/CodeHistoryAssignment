//
//  ContentView.swift
//  CodeHistoryAssignment
//
//  Created by Fred Tsui on 2/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentcolor = Color(red: 48/255, green: 105/255, blue:
    240/255)
    
    var body: some View {
        Text("Take me to your leader!")
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
