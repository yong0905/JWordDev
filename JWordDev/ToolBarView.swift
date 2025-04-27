//
//  ToolBarView.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    Spacer()
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 40, height: 40)
                    Spacer()
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .frame(height: 830, alignment: .bottom)
            .padding(.horizontal, 45)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ToolBarView()
}
