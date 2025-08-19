//
//  eMouseApp.swift
//  eMouse
//
//  Created by Ted Tan on 2/9/24.
//

import SwiftUI

@main
struct eMouseApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            iOSView()
            #elseif os(macOS)
            MacOSView()
            #endif
        }
    }
}
