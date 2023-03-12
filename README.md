# MultilineTextView
UITextView has just entered the SwiftUI world! 👀

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/MultilineTextView", exact: .init(0, 0, 3))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Usage

```swift
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
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/MultilineTextView/blob/main/Resources/screenshot.png?raw=true" width="50%" alt="Example"></p>
