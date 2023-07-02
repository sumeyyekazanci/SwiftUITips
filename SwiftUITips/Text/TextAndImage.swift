//
//  TextAndImage.swift
//  SwiftUITips
//
//  Created by Sümeyye Kazancı on 2.07.2023.
//

import SwiftUI

struct TextAndImage: View {
    var body: some View {
        VStack {
            Text(Image(systemName: "calendar")) +
            Text("July 2\n") +
            Text(Image(systemName: "chart.pie.fill")) +
            Text("99%\n") +
            Text(Image(systemName: "message.fill")) +
            Text("1   ") +
            Text(Image(systemName: "paperclip")) +
            Text("2")
        }
    }
}

struct TextAndImage_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImage()
    }
}
