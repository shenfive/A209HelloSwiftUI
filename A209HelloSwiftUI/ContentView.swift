//
//  ContentView.swift
//  A209HelloSwiftUI
//
//  Created by 申潤五 on 2022/11/5.
//

import SwiftUI

struct ContentView: View {

    
    
    @State var emojiCount = 5
    var body: some View {
        VStack{
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
        }
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
