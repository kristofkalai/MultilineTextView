//
//  MultilineTextView.swift
//  
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import SwiftUI

public struct MultilineTextView {
    @State private var dynamicHeight: CGFloat?
    @State private var dynamicWidth: CGFloat?
    @Binding private var text: String
    private let textViewProperties: TextViewProperties?

    public init(text: Binding<String>, textViewProperties: TextViewProperties? = nil) {
        self._text = text
        self.textViewProperties = textViewProperties
    }

    public init(text: String, textViewProperties: TextViewProperties? = nil) {
        self.init(text: .constant(text), textViewProperties: textViewProperties)
    }
}

extension MultilineTextView: View {
    public var body: some View {
        GeometryReader {
            WrappedTextView(text: $text,
                            calculatedHeight: $dynamicHeight,
                            calculatedWidth: $dynamicWidth,
                            maxWidth: $0.size.width,
                            textViewProperties: textViewProperties)
            .frame(minWidth: dynamicWidth,
                   idealWidth: dynamicWidth,
                   maxWidth: dynamicWidth,
                   minHeight: dynamicHeight,
                   idealHeight: dynamicHeight,
                   maxHeight: dynamicHeight)
            .frame(width: dynamicWidth, height: dynamicHeight)
        }
        .frame(width: dynamicWidth, height: dynamicHeight)
    }
}
