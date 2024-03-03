//
//  BasicText.swift
//  SwiftUITips
//
//  Created by Sümeyye Kazancı on 20.05.2023.
//

import SwiftUI

struct TextTips: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // From a String Literal
                Text("Hello,**world**! Check out our [website](https://example.com)")
                
                // From a String Literal with tint color
                Text("Hello,**world**! Check out our [website](https://example.com)")
                    .tint(.orange)
                
                // From a variable
                let exampleString = "Hello,**world**! Check out our [website](https://example.com)"
                
                // Does not work
                Text(exampleString)
                
                // Works
                Text(LocalizedStringKey(exampleString))
                
                // From an AttributedString (no localization)
                if let attrStr = try? AttributedString (markdown: exampleString) {
                    Text (attrStr)
                }
                
                // Custom actions for link inside a text
                Text("Hello,**world**! Check out our [website](https://example.com)")
                    .environment(\.openURL, OpenURLAction(handler: { url in
                        print("Link tapped: \(url)")
                        return .handled
                    }))
                
                // Interpolate text with text modifiers
                Text("Hello \(Text("world").foregroundColor(.orange))")
                
                let eventDate = Date(timeIntervalSinceNow: 646)
                // Date updates automatically in the UI
                Text ("\(eventDate, style: .relative) left until the event")
                
                // Fixed width
                Text ("\(eventDate, style: .relative) left until the event")
                    .monospacedDigit()
            }
            .font(.system(size: 24))
        }
    }
}

#Preview {
    TextTips()
}
