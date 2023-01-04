//
//  AppLaunch.swift
//  ExampleActivityKit
//
//  Created by raykim on 2023/01/03.
//

import SwiftUI

struct AppLaunch: Identifiable, Codable {
    var id: UUID = .init()
    var serviceName: String
    var deepLink: String
}
