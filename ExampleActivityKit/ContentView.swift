//
//  ContentView.swift
//  ExampleActivityKit
//
//  Created by raykim on 2022/12/29.
//

import SwiftUI
import ActivityKit
import WidgetKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: self.makeLockScreen) {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("설치하기")
                }
            }
        }
        .padding()
    }
    func makeLockScreen() {
        let activity = ExampleActivityKitLauncherAttributes(name: "AppLauncher", apps: [
            AppLaunch(serviceName: "Kakao", deepLink: "kakaotalk://"),
            AppLaunch(serviceName: "Safari", deepLink: "https://google.com")
        ])
        let initialContentState = ExampleActivityKitLauncherAttributes.ContentState()
        do{
            let activity = try Activity<ExampleActivityKitLauncherAttributes>.request(attributes: activity, contentState: initialContentState)
            print("Activity Added \(activity.id)")
        }catch{
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
