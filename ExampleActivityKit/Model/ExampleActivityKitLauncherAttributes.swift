//
//  ExampleActivityKitLauncherAttributes.swift
//  ExampleActivityKit
//
//  Created by raykim on 2023/01/02.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct ExampleActivityKitLauncherAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
    }
    var name: String
    var apps:[AppLaunch]
}
