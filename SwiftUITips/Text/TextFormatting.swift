//
//  TextFormatting.swift
//  SwiftUITips
//
//  Created by Sümeyye Kazancı on 2.07.2023.
//

import SwiftUI

struct TextFormatting: View {
    @State private var modifierActive = true
    
    var body: some View {
        
        
        VStack {
            
            Toggle("Modifiers Active", isOn: $modifierActive)
                .font(.title)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Bold").bold()
                Text("Italic").italic()
                Text("Strikethrough").strikethrough()
                Text("Red Strikethrough")
                    .strikethrough(modifierActive, color: .red)
                Text("Text Color (ForegroundColor)").foregroundColor(.indigo)
                Text("Underline").underline()
                Text("Red Underline").underline(modifierActive, color: .red)
            }
            .font(.title)
        }
    }
}

struct TextFormatting_Previews: PreviewProvider {
    static var previews: some View {
        TextFormatting()
    }
}
