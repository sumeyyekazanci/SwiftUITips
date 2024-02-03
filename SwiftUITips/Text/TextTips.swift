//
//  BasicText.swift
//  SwiftUITips
//
//  Created by Sümeyye Kazancı on 20.05.2023.
//

import SwiftUI

struct TextTips: View {
    var body: some View {
        VStack(spacing: 20) {
            // From a String Literal
            Text("Hello,**world**! Check out our [website](https://example.com)")
                .font (.title)
            
            // From a String Literal with tint color
            Text("Hello,**world**! Check out our [website](https://example.com)")
                .tint(.orange)
                .font (.title)
            
            // From a variable
            let exampleString = "Hello,**world**! Check out our [website](https://example.com)"
            
            // Does not work
            Text(exampleString)
                .font (.title)
            
            // Works
            Text(LocalizedStringKey(exampleString))
                .font (.title)
            
            // From an AttributedString (no localization)
            if let attrStr = try? AttributedString (markdown: exampleString) {
                Text (attrStr)
                    .font (.title)
            }
            
            // Custom actions for link inside a text
            Text("Hello,**world**! Check out our [website](https://example.com)")
                .environment(\.openURL, OpenURLAction(handler: { url in
                    print("Link tapped: \(url)")
                    return .handled
                }))
                .font (.title)
            
            // Interpolate text with text modifiers
            Text("Hello \(Text("world").foregroundColor(.orange))")
                .font (.title)
            
            let eventDate = Date(timeIntervalSinceNow: 646)
            // Date updates automatically in the UI
            Text ("\(eventDate, style: .relative) left until the event")
            .font (.title)
            
            // Fixed width
            Text ("\(eventDate, style: .relative) left until the event")
                .monospacedDigit()
                .font (.title)
        }
    }
}

#Preview {
    TextTips()
}
