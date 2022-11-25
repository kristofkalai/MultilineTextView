//
//  TextView.swift
//  
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import UIKit

class TextView: UITextView {
    init() {
        super.init(frame: .zero, textContainer: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
