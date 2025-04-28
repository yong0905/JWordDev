//
//  JWordData.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI
import SwiftData

struct JWordData: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

@Model
class JWordModel {
    var kanji: String
    var yomigana: String
    var meaning: String
    
    init(kanji: String, yomigana: String, meaning: String) {
        self.kanji = kanji
        self.yomigana = yomigana
        self.meaning = meaning
    }
}

#Preview {
    JWordData()
}
