//
//  UIColor+Extensions.swift
//  TKOKit
//
//  Created by Todd Olsen on 6/14/17.
//
//

import UIKit

public extension UIColor {

    /// Creates a color from `rgb`, typically `rgb` takes
    /// the form of a hexadecimal. For example: `0x31f3b9`.
    ///
    /// - Parameters:
    ///   - rgb: A UInt32 representation of the color.
    ///   - alpha: A CGFloat of the alpha value. Default = 1.0.
    public convenience init(rgb: UInt32, alpha: CGFloat = 1.0) {
        self.init(
            red:    CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green:  CGFloat((rgb & 0x00FF00) >>  8) / 255.0,
            blue:   CGFloat((rgb & 0x0000FF) >>  0) / 255.0,
            alpha:  alpha
        )
    }

}
