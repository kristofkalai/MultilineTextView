//
//  UITextView+Extensions.swift
//
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import UIKit

extension UITextView {
    public func setup(with textViewProperties: TextViewProperties?) {
        guard let textViewProperties else { return }
        if let textAlignment = textViewProperties.textAlignment {
            self.textAlignment = textAlignment
        }
        if let textColor = textViewProperties.textColor {
            self.textColor = textColor
        }
        if let textFont = textViewProperties.textFont {
            font = textFont
        }
        var linkTextAttributes: [NSAttributedString.Key: Any] = [:]
        if let linkColor = textViewProperties.linkColor {
            dataDetectorTypes = .link
            linkTextAttributes.updateValue(linkColor, forKey: .foregroundColor)
            linkTextAttributes.updateValue(NSUnderlineStyle.single.rawValue, forKey: .underlineStyle)
        }
        if let linkFont = textViewProperties.linkFont {
            dataDetectorTypes = .link
            linkTextAttributes.updateValue(linkFont, forKey: .font)
            linkTextAttributes.updateValue(NSUnderlineStyle.single.rawValue, forKey: .underlineStyle)
        }
        self.linkTextAttributes = linkTextAttributes
        if let accessibilityIdentifier = textViewProperties.accessibilityIdentifier {
            self.accessibilityIdentifier = accessibilityIdentifier
        }

        let attributedString = NSMutableAttributedString(string: text, attributes: .init())
        textViewProperties.links.enumerated().forEach {
            attributedString.setLink(text: $0.element.text, url: $0.offset.description)
        }
        attributedText = attributedString
    }
}
