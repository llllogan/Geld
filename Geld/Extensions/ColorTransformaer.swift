//
//  Color.swift
//  Geld
//
//  Created by Logan Janssen on 15/7/2024.
//

import Foundation
import SwiftUICore
import UIKit

class ColourTransformer: ValueTransformer {
    override func transformedValue(_ value: Any?) -> Any? {
        guard let color = value as? UIColor else {
            return nil
        }
        
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: true)
            return data
        } catch {
            return nil
        }
        
    }
    
    override func reverseTransformedValue(_ value: Any?) -> Any? {
        guard let data = value as? Data else {
            return nil
        }
        
        do {
            let color = try NSKeyedUnarchiver.unarchivedObject(ofClass: UIColor.self, from: data)
            return color
        } catch {
            return nil
        }
    }
    
    override class func transformedValueClass() -> AnyClass {
        return UIColor.self
    }
    
    override class func allowsReverseTransformation() -> Bool {
        return true
    }
    
    static func register() {
        ValueTransformer.setValueTransformer(ColourTransformer(), forName: .init("ColourTransformer"))
    }
    
}
