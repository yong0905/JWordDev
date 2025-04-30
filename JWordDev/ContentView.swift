//
//  ContentView.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var words: [JWordModel]
    
    
    
    var body: some View {

    }
        
}

#Preview {
    ContentView()
}
