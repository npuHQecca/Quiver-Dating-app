//
//  CardView.swift
//  Quiver Dating app
//
//  Created by стасик on 13.05.24.
//

import SwiftUI

struct CardView: View {
    
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack(alignment: .top){
                Image("image1")
                    .resizable()
                
                SwipeActionIndicatorView(xOffset: $xOffset, screenCutOff: screenCutOff)
            }
          
            //.scaledToFit() -неправильное к-во пикселей на картинке - нужны инстаграмные фотки1
            
            UserInfoView()
            
            
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.easeInOut, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDrugChanged)
                .onEnded(onDrugEnded)
                
        )
    }
}
private extension CardView{
    func onDrugChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDrugEnded(_ value: _ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        
        if abs(width) < abs(screenCutOff) {
            xOffset = 0
            degrees = 0
        }
    }
}

private extension CardView{
    var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    
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
