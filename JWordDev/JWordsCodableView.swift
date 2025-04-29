//
//  JWordsCodableView.swift
//  JWordDev
//
//  Created by 강 on 4/29/25.
//

import SwiftUI
import SwiftData

struct JWordsCodable: Codable {
    let kanji: String
    let yomigana: String
    let meaning: String
}






struct JWordsCodableView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}



func loadWordsJSON() -> [JWordsCodable] {
    guard let fileURL = Bundle.main.url(
        forResource: "wordsn3", withExtension: "json"),
          let data = try? Data(contentsOf: fileURL)
    else{
        print("not find")
        return []
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([JWordsCodable].self, from: data)
    } catch {
        print("JSON 디코딩 실패: \(error)")
        return []
    }
}







#Preview {
    JWordsCodableView()
}
