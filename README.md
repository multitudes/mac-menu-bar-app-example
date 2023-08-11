# mac-menu-bar-app-example
mac menu bar app

## Create a mac menu bar app in SwiftUI with MenuBarExtra

It is very easy to have a utility app displaying no window or icon and living in the menu bar.

We can easily **add this with a new Scene called `[MenuBarExtra](https://developer.apple.com/documentation/swiftui/menubarextra)`.

To remove the main window app, we remove `WindowGroup` from `<ProjectName>App.swift`.

Even though we remove the main window scene, the **app icon still shows in the Dock or the application switcher**.

1. open **Info.plist** or open up the **Info** tab under your app target.
2. Then add a new key "**Application is agent (UIElement)**" (`LSUIElement` flag), and sets the value to `YES`.
```swift
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
```


## Sources
https://developer.apple.com/documentation/swiftui/lazyvgrid
https://sarunw.com/posts/swiftui-menu-bar-app/
