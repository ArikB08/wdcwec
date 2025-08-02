//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "🧢", size: 40, x: 0,  y: -170)
            EmojiView(symbol: "🕶️", size: 38, x: 0,  y: -145)

            EmojiView(symbol: "👄", size: 38, x: 0,  y: -110)
            
            EmojiView(symbol: "👉", size: 38, x: 70, y: -65)
            EmojiView(symbol: "👈", size: 38, x: -70, y: -65)


            
        }
        .frame(width: 200, height: 320)
    }
}

struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}


#Preview {
    ContentView()
}
