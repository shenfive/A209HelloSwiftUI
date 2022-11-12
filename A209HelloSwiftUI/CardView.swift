//
//  CardView.swift
//  A209HelloSwiftUI
//
//  Created by 申潤五 on 2022/11/12.
//

import SwiftUI

struct CardView: View {
    
    var content:String
    
    @State var isFaceUp = true
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 15)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
            print(isFaceUp)
        }
    }
}



















struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "Preview")
    }
}
