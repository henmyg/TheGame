// Henrik Top Mygind, 30/06/2023
import SwiftUI
import WidgetKit
import AppIntents

struct LoseWidget: Widget {
    let kind: String = "LoseWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(
            kind: kind,
            provider: ManualUpdateTimelineProvider()) { entry in
                LoseWidgetView(entry: entry)
            }
    }
}
