//
//  NonSelectableTextView.swift
//  
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import UIKit

final class NonSelectableTextView: TextView {
    override var canBecomeFirstResponder: Bool {
        false
    }
}
