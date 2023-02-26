//
//  ContentView.swift
//  Example
//
//  Created by Kristof Kalai on 2022. 11. 25..
//

import MultilineTextView
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            examplesView

            Divider()

            trailingAlignedExamplesView

            Divider()

            leadingAlignedExamplesView
        }
        .padding()
        .preferredColorScheme(.light)
    }
}

extension ContentView {
    private var examplesView: some View {
        Group {
            Text("Examples:")

            oneLineTextView
                .border(.blue)
                .padding()

            multipleLinesTextView
                .border(.blue)
                .padding()

            oneLineTextViewWithLink
                .border(.blue)
                .padding()

            multipleLinesTextViewWithLink
                .border(.blue)
                .padding()

            oneLineTextViewWithLinkWithProperties
                .border(.blue)
                .padding()

            multipleLinesTextViewWithLinkWithProperties
                .border(.blue)
                .padding()
        }
    }

    private var trailingAlignedExamplesView: some View {
        Group {
            Text("Examples with trailing alignment:")

            HStack(spacing: .zero) {
                Spacer()

                oneLineTextView
                    .border(.blue)
                    .padding()
            }

            HStack(spacing: .zero) {
                Spacer()

                multipleLinesTextView
                    .border(.blue)
                    .padding()
            }

            HStack(spacing: .zero) {
                Spacer()

                oneLineTextViewWithLink
                    .border(.blue)
                    .padding()
            }

            HStack(spacing: .zero) {
                Spacer()

                multipleLinesTextViewWithLink
                    .border(.blue)
                    .padding()
            }

            HStack(spacing: .zero) {
                Spacer()

                oneLineTextViewWithLinkWithProperties
                    .border(.blue)
                    .padding()
            }

            HStack(spacing: .zero) {
                Spacer()

                multipleLinesTextViewWithLinkWithProperties
                    .border(.blue)
                    .padding()
            }
        }
    }

    private var leadingAlignedExamplesView: some View {
        Group {
            Text("Examples with leading alignment:")

            HStack(spacing: .zero) {
                oneLineTextView
                    .border(.blue)
                    .padding()

                Spacer()
            }

            HStack(spacing: .zero) {
                multipleLinesTextView
                    .border(.blue)
                    .padding()

                Spacer()
            }

            HStack(spacing: .zero) {
                oneLineTextViewWithLink
                    .border(.blue)
                    .padding()

                Spacer()
            }

            HStack(spacing: .zero) {
                multipleLinesTextViewWithLink
                    .border(.blue)
                    .padding()

                Spacer()
            }

            HStack(spacing: .zero) {
                oneLineTextViewWithLinkWithProperties
                    .border(.blue)
                    .padding()

                Spacer()
            }

            HStack(spacing: .zero) {
                multipleLinesTextViewWithLinkWithProperties
                    .border(.blue)
                    .padding()

                Spacer()
            }
        }
    }
}

extension ContentView {
    private var oneLineTextView: some View {
        MultilineTextView(
            text: "One line of text"
        )
    }

    private var multipleLinesTextView: some View {
        MultilineTextView(
            text: "Multiple lines of text, which should be broken into multiple lines at the end of the screen. I just add some more words to make sure that even on larger devices that can be tested too"
        )
    }

    private var oneLineTextViewWithLink: some View {
        MultilineTextView(
            text: "One line of link https://www.google.com and so on"
        )
    }

    private var multipleLinesTextViewWithLink: some View {
        MultilineTextView(
            text: "Multiple lines of text with some links, e.g. https://www.google.com, which should be broken into multiple lines at the end of the screen. I just add some more words to make sure that even on larger devices that can be tested too. And here is another link https://www.facebook.com too"
        )
    }

    private var oneLineTextViewWithLinkWithProperties: some View {
        MultilineTextView(
            text: "One line of link https://www.google.com and so on",
            textViewProperties: .init(
                textColor: .green,
                linkColor: .blue,
                textFont: .systemFont(ofSize: 12),
                linkFont: .systemFont(ofSize: 11),
                accessibilityIdentifier: "accessibilityIdentifier",
                textAlignment: .justified
            )
        )
    }

    private var multipleLinesTextViewWithLinkWithProperties: some View {
        MultilineTextView(
            text: "Multiple lines of text with some links, e.g. https://www.google.com, which should be broken into multiple lines at the end of the screen. I just add some more words to make sure that even on larger devices that can be tested too. And here is another link https://www.facebook.com too",
            textViewProperties: .init(
                textColor: .red,
                linkColor: .orange,
                textFont: .boldSystemFont(ofSize: 12),
                linkFont: .italicSystemFont(ofSize: 12),
                accessibilityIdentifier: "accessibilityIdentifier",
                textAlignment: .justified
            )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
