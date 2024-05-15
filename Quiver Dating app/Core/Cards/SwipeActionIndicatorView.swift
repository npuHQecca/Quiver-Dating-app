//
//  SwipeActionIndicatorView.swift
//  Quiver Dating app
//
//  Created by стасик on 16.05.24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    let screenCutOff: CGFloat
    
    var body: some View {
        HStack {
            Text("Like")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 40)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / screenCutOff))
            
            Spacer()
            
            Text("Ошибка!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 150, height: 40)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / screenCutOff) * -1)
        }
        .padding(45)
    }
}

struct SwipeActionIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionIndicatorView(xOffset: .constant(20), screenCutOff: -1)
    }
}
