//
//  JWordDevApp.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI

@main
struct JWordDevApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: JWordModel.self)   //앱 전체에서 일본어 단어 모델을 사용할 수 있게 함
    }
}
