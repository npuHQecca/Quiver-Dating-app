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
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
          
            //.scaledToFit() -неправильное к-во пикселей на картинке - нужны инстаграмные фотки110101208821оа
            
            UserInfoView()
            
            
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
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
        
        if abs(width) < abs(SizeConstants.screenCutOff) {
            xOffset = 0
            degrees = 0
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
