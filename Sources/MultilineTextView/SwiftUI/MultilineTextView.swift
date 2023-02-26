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
    @Binding private var textViewProperties: TextViewProperties?

    public init(text: Binding<String>, textViewProperties: Binding<TextViewProperties?> = .constant(nil)) {
        self._text = text
        self._textViewProperties = textViewProperties
    }

    public init(text: String, textViewProperties: Binding<TextViewProperties?> = .constant(nil)) {
        self.init(text: .constant(text), textViewProperties: textViewProperties)
    }

    public init(text: Binding<String>, textViewProperties: TextViewProperties? = nil) {
        self.init(text: text, textViewProperties: .constant(textViewProperties))
    }

    public init(text: String, textViewProperties: TextViewProperties? = nil) {
        self.init(text: .constant(text), textViewProperties: .constant(textViewProperties))
    }
}

extension MultilineTextView: View {
    public var body: some View {
        GeometryReader {
            WrappedTextView(text: $text,
                            calculatedHeight: $dynamicHeight,
                            calculatedWidth: $dynamicWidth,
                            textViewProperties: $textViewProperties,
                            maxWidth: $0.size.width)
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
