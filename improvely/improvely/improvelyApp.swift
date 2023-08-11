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
    @State private var symbol: String = "mountain.2.fill"
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some Scene {
        //        WindowGroup {
        //            ContentView()
        //        }
        MenuBarExtra(symbol, systemImage: symbol) {
            // just for fun
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0x1f600...0x1f679, id: \.self) { value in
                        Text(String(format: "%x", value))
                        Text(emoji(value))
                            .font(.largeTitle)
                    }
                }
            }
            
            
            
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
        .menuBarExtraStyle(.window)
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}
