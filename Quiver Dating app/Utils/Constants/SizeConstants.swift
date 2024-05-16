//
//  SizeConstants.swift
//  Quiver Dating app
//
//  Created by стасик on 16.05.24.
//

import SwiftUI

struct SizeConstants {
    
      static  var screenCutOff: CGFloat {
            (UIScreen.main.bounds.width / 2) * 0.8
        }
        
       static var cardWidth: CGFloat {
            UIScreen.main.bounds.width - 20
        }
        
       static var cardHeight:CGFloat {
            UIScreen.main.bounds.height / 1.45
            
        }

}
