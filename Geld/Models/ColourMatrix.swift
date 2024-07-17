//
//  ColourMatrix.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import SwiftUICore
import SwiftData
import UIKit

@Model
class ColourMatrix {
    
    @Attribute(.transformable(by: ColourTransformer.self)) var topLeft: UIColor
    @Attribute(.transformable(by: ColourTransformer.self)) var topMiddle: UIColor
    @Attribute(.transformable(by: ColourTransformer.self)) var topRight: UIColor
    @Attribute(.transformable(by: ColourTransformer.self)) var bottomLeft: UIColor
    @Attribute(.transformable(by: ColourTransformer.self)) var bottomMiddle: UIColor
    @Attribute(.transformable(by: ColourTransformer.self)) var bottomRight: UIColor
    
    init(topLeft: Color, topMiddle: Color, topRight: Color, bottomLeft: Color, bottomMiddle: Color, bottomRight: Color) {
        self.topLeft = UIColor(topLeft)
        self.topMiddle = UIColor(topMiddle)
        self.topRight = UIColor(topRight)
        self.bottomLeft = UIColor(bottomLeft)
        self.bottomMiddle = UIColor(bottomMiddle)
        self.bottomRight = UIColor(bottomRight)
    }
    
}
