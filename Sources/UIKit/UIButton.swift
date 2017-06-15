//
//  UIButton+Extensions.swift
//  TKOKit
//
//  Created by Todd Olsen on 6/14/17.
//
//

import UIKit

public extension UIButton {

    /// Sets the background color of a button for a particular state.
    ///
    /// - Parameters:
    ///   - backgroundColor: The color to set.
    ///   - state: The state for the color to take affect.
    public func setBackgroundColor(_ backgroundColor: UIColor, forState state: UIControlState) {
        self.setBackgroundImage(.pixel(with: backgroundColor), for: state)
    }
}
