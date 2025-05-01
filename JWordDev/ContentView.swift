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
    @State private var isInserted = false
    @State private var currentWord: JWordModel?
    
    var body: some View {
//        List(words){ word in
//            VStack (alignment: .leading) {
//                Text(word.kanji)
//                Text(word.yomigana)
//            }
//        }
        
        NavigationStack {
            ZStack{
                VStack {
                    Spacer()
                    if let word = currentWord {
                        Text(word.yomigana)
                            .font(.system(size: 50))
                        Text(word.kanji)
                            .font(.system(size: 100))
                            .bold()
                        Text(word.meaning)
                            .font(.system(size: 50))
                    } else {
                        Text("No Word")
                            .font(.system(size: 50))
                    }
                    //Spacer()
                    
                }
                .padding(.bottom, 270)
                
                VStack{
                    Spacer()
                    Button(action: {showRandomWord()} ) {
                        Image(systemName: "arrowshape.right")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.black)
                            
                    }
                    .padding(.bottom, 120)
                }
                
            }
            

 
            
            .toolbar {
                // top bar
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { print("왼쪽 버튼 눌림")}) {
                        Image(systemName: "moon")
                            .resizable()
                            .toolBarStyle()
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    
                    Button(action: { print("중간 버튼 눌림") }){
                        Image(systemName: "speaker.wave.2.fill")
                            .resizable()
                            .toolBarStyle()
                            
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { print("오른쪽 버튼 눌림")}){
                        Image(systemName: "bookmark")
                            .resizable()
                            .toolBarStyle()
                    }
                }
                // bottom bar
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {print( "하단 오른쪽")}){
                        Image(systemName: "house.fill")
                            .resizable()
                            .toolBarStyle()
                    }
                    
                    Spacer()
                    Button(action: {print( "하단 가운데")}){
                        Image(systemName: "calendar")
                            .resizable()
                            .toolBarStyle()
                    }
                    Spacer()
                    Button(action: {print( "하단 왼쪽")}){
                        Image(systemName: "gear")
                            .resizable()
                            .toolBarStyle()
                    }
                    
                }
            }
            
            

            
            .onAppear {
                if !isInserted && words.isEmpty{
                    ModelDataFuncN2(into:  modelContext)
                    isInserted = true
                }
                showRandomWord()
            }
        }
        
    }
    
    
    
    func showRandomWord() {
        currentWord = words.randomElement()
    }
        
}



#Preview {
    ContentView()
}



