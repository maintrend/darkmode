//
//  ext UIColor.swift
//  DarkMode
//
//  Created by talgat on 6/28/21.
//

import Foundation
import UIKit

extension UIColor {
    
    static let seemuBlue = UIColor.blue
    
    static let dynamicColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .red
        } else {
            return .orange
        }
    }
    
    
    static let complementaryColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .black
        } else {
            let ciColor = CIColor(color: .red)
            let compRed: CGFloat = 1.0 - ciColor.red
            let compGreen: CGFloat = 1.0 - ciColor.green
            let compBlue: CGFloat = 1.0 - ciColor.blue
            return UIColor(red: compRed, green: compGreen, blue: compBlue, alpha: 1.0)
        }
    }
    
}

