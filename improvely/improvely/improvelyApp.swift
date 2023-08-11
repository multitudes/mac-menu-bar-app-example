//
//  improvelyApp.swift
//  improvely
//
//  Created by Laurent B on 11/08/2023.
//

import SwiftUI

@main
struct improvelyApp: App {
    @AppStorage("showMenuBarExtra") private var showMenuBarExtra = true
    @State private var symbol: String = "figure.run.square.stack"
    
    var body: some Scene {
        //        WindowGroup {
        //            ContentView()
        //        }
        MenuBarExtra(symbol, systemImage: symbol) {
            Button("Improve!") {
                symbol = "mountain.2.fill"
            }
            .keyboardShortcut("k")
            
            Button("Two") {
                symbol = "figure.run.square.stack.fill"
            }
            .keyboardShortcut("g")
            
            Button("Three") {
                symbol = "sos"
            }
            .keyboardShortcut("1")
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
