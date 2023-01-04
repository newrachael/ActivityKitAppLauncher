//
//  ExampleActivityKitLauncherLiveActivity.swift
//  ExampleActivityKitLauncher
//
//  Created by raykim on 2022/12/29.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct ExampleActivityKitLauncherLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: ExampleActivityKitLauncherAttributes.self) { context in
            HStack(spacing: 8){
                ForEach(context.attributes.apps) { app in
                    Link(destination: URL(string: app.deepLink)!) {
                        Image(app.serviceName)
                            .resizable()
                            .frame(width: 80, height: 80)
                    }
                }
            }.frame(height: 80)
            .activityBackgroundTint(Color.clear)
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T")
            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
    
    @ViewBuilder
    func DockView(addedShortcuts: [AppLaunch])->some View{
        HStack(spacing: 0){
            ForEach(addedShortcuts){link in
           
                Link(destination: URL(string: link.deepLink)!) {
                    Image(link.serviceName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .frame(maxWidth: .infinity)
                }
            
            }
        }
        .frame(height: 85)
        .background {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}
