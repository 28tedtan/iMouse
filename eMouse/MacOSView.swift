//
//  ContentView.swift
//  eMouse
//
//  Created by Ted Tan on 2/9/24.
//

import SwiftUI
import CoreGraphics
struct MacOSView: View {
    var body: some View {
        VStack{
            Button("Set Cursor Pos") {
                setCursorPosition(x: 100, y: 100)
            }
        }
    }
}



func setCursorPosition(x: CGFloat, y: CGFloat) {
    let point = CGPoint(x: x, y: y)
    if let screen = NSScreen.main {
        let screenRect = screen.frame
        if screenRect.contains(point) {
            CGWarpMouseCursorPosition(point)
        } else {
            print("Cursor position is outside the screen bounds")
        }
    } else {
        print("Failed to get the main screen")
    }
}


#Preview {
    MacOSView()
}
