//
//  Array+Extensions.swift
//
//
//  Created by Kristóf Kálai on 06/04/2024.
//

import Foundation

extension Array {
    public subscript(safe index: Index) -> Element? {
        index >= 0 && index < count ? self[index] : nil
    }
}
