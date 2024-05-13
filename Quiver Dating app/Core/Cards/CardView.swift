//
//  CardView.swift
//  Quiver Dating app
//
//  Created by стасик on 13.05.24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("image1")
                .resizable()
            
                //.scaledToFit() -неправильное к-во пикселей на картинке - нужны инстаграмные фотки
            
            UserInfoView()
                
                
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

private extension CardView{
    
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight:CGFloat {
        UIScreen.main.bounds.height / 1.45
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
