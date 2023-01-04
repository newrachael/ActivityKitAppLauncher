//
//  ExampleActivityKitApp.swift
//  ExampleActivityKit
//
//  Created by raykim on 2022/12/29.
//

import SwiftUI

@main
struct ExampleActivityKitApp: App {
    @Environment(\.openURL) var openURL
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    openURL(url)
                }
        }
    }
}
