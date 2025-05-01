//
//  JWordData.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI
import SwiftData


@Model
class JWordModel {      //단어 모델 정의
    var kanji: String
    var yomigana: String
    var meaning: String
    
    init(kanji: String, yomigana: String, meaning: String) {
        self.kanji = kanji
        self.yomigana = yomigana
        self.meaning = meaning
    }
}
