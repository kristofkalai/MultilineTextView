//
//  TextViewProperties.swift
//
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import UIKit

public struct TextViewProperties {
    let textColor: UIColor?
    let linkColor: UIColor?
    let textFont: UIFont?
    let linkFont: UIFont?
    let accessibilityIdentifier: String?
    let textAlignment: NSTextAlignment?

    public init(textColor: UIColor? = nil,
                linkColor: UIColor? = nil,
                textFont: UIFont? = nil,
                linkFont: UIFont? = nil,
                accessibilityIdentifier: String? = nil,
                textAlignment: NSTextAlignment? = nil) {
        self.textColor = textColor
        self.linkColor = linkColor
        self.textFont = textFont
        self.linkFont = linkFont
        self.accessibilityIdentifier = accessibilityIdentifier
        self.textAlignment = textAlignment
    }
}
