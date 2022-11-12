//
//  ContentView.swift
//  A209HelloSwiftUI
//
//  Created by 申潤五 on 2022/11/5.
//

import SwiftUI

struct ContentView: View {

    var emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]

    @State var emojiCount = 20
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            
            HStack{
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal, 20)
        }.padding(10)
    }
    
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
            print(emojiCount)
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View{
        Button{
            if emojiCount <= 20{
                emojiCount += 1
            }
            print(emojiCount)
        } label: {
            Image(systemName: "plus.circle")
        }
        
    }
    
    
    
    
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
