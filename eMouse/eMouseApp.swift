//
//  eMouseApp.swift
//  eMouse
//
//  Created by Ted Tan on 2/9/24.
//

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
            iOSView()       // entry point on iOS
            #elseif os(macOS)
            MacOSView()     // entry point on macOS
            #else
            ContentView()   // fallback for other platforms
            #endif
        }

    }
}
