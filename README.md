# mac-menu-bar-app-example
mac menu bar app

## Create a mac menu bar app in SwiftUI with MenuBarExtra

It is very easy to have a utility app 


This is where we want to put a menu bar for a utility app.

We can easily **add this with a new `[Scene](https://developer.apple.com/documentation/swiftui/scene)` called `[MenuBarExtra](https://developer.apple.com/documentation/swiftui/menubarextra)`**.

We add a **divider** to separate the **primary function from the quit menu**. I use `NSApplication.shared.terminate(nil)` as a way to quit the app (not sure if there is a more SwiftUI way to doing this or not).

o remove the main window app, we remove `WindowGroup` from `<ProjectName>App.swift`.

Even though we remove the main window scene, the **app icon still shows in the Dock or the application switcher**.

1. open **Info.plist** or open up the **Info** tab under your app target.
2. Then add a new key "**Application is agent (UIElement)**" (`LSUIElement` flag), and sets the value to `YES`.



## Sources
https://developer.apple.com/documentation/swiftui/lazyvgrid
https://sarunw.com/posts/swiftui-menu-bar-app/
