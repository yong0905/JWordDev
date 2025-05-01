//
//  NavigationBarView.swift
//  JWordDev
//
//  Created by 강 on 4/27/25.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "moon.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    Spacer()
                Image(systemName: "speaker.wave.2.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 40, height: 40)
                    
            }
            .frame(height: 740, alignment: .top)
            .padding(.horizontal, 40)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    NavigationBarView()
}
