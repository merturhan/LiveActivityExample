//
//  RaceLiveScoreLiveActivity.swift
//  RaceLiveScore
//
//  Created by Mert Urhan on 8.09.2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct RaceLiveScoreAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct RaceLiveScoreLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: RaceLiveScoreAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

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
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension RaceLiveScoreAttributes {
    fileprivate static var preview: RaceLiveScoreAttributes {
        RaceLiveScoreAttributes(name: "World")
    }
}

extension RaceLiveScoreAttributes.ContentState {
    fileprivate static var smiley: RaceLiveScoreAttributes.ContentState {
        RaceLiveScoreAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: RaceLiveScoreAttributes.ContentState {
         RaceLiveScoreAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: RaceLiveScoreAttributes.preview) {
   RaceLiveScoreLiveActivity()
} contentStates: {
    RaceLiveScoreAttributes.ContentState.smiley
    RaceLiveScoreAttributes.ContentState.starEyes
}
