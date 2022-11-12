//
//  CardView.swift
//  A209HelloSwiftUI
//
//  Created by 申潤五 on 2022/11/12.
//

import SwiftUI

struct CardView: View {
    
    var icon = "H"
    
    @State var isFaceUp = true
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(icon)
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
        CardView()
    }
}
