//
//  KanjiWordView.swift
//  JWordDev
//
//  Created by 강 on 4/29/25.
//

import SwiftUI

struct KanjiWordView: View {
    var body: some View {
        VStack {
            Text("yomigana")
                .font(.title)
            
            Text("kanji")
                .font(.largeTitle)
                
            Text("meaning")
                .font(.title2)
            
        }
        
    }
}





#Preview {
    KanjiWordView()
}
