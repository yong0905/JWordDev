//
//  ToolBarStyle.swift
//  JWordDev
//
//  Created by 강 on 5/1/25.
//

import SwiftUI

struct ToolBarStyle: ViewModifier {
    var width: CGFloat
    var height: CGFloat
    var color: Color

    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .foregroundStyle(color)
    }
}

extension View {
    func toolBarStyle(width: CGFloat = 40, height: CGFloat = 40, color: Color = .black) -> some View {
        self.modifier(ToolBarStyle(width: width, height: height, color: color))
    }
}

