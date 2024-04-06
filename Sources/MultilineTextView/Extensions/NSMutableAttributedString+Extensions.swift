//
//  NSMutableAttributedString+Extensions.swift
//
//
//  Created by Kristóf Kálai on 06/04/2024.
//

import Foundation

extension NSMutableAttributedString {
    @discardableResult
    func setLink(text: String, url: String) -> Bool {
        let range = mutableString.localizedStandardRange(of: text)
        guard range.location != NSNotFound else { return false }
        addAttribute(.link, value: url, range: range)
        return true
    }
}
