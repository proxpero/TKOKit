//
//  UIImage+Extensions.swift
//  TKOKit
//
//  Created by Todd Olsen on 6/14/17.
//
//

import UIKit

public extension UIImage {
    /// - Parameter color: A color.
    /// - Returns: A 1x1 UIImage of a solid color.
    public static func pixel(with color: UIColor) -> UIImage {
        let pixel = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(pixel.size)
        defer { UIGraphicsEndImageContext() }

        guard let context = UIGraphicsGetCurrentContext() else { return UIImage() }

        context.setFillColor(color.cgColor)
        context.fill(pixel)

        return UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
    }
}
