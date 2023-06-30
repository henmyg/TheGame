// Henrik Top Mygind, 30/06/2023

import WidgetKit
import SwiftUI
import SwiftData

/// Widget for showing statistics of The Game
struct StatisticsWidget: Widget {
    let kind: String = "StatisticsWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(
            kind: kind,
            provider: ManualUpdateTimelineProvider()
        ) { entry in
            StatisticsWidgetView(entry: entry)
                .modelContainer(try! .shared)
        }
        .supportedFamilies([.systemMedium])
        .configurationDisplayName("Statistics widget")
        .description("Widget showing your statistics in The Game")
    }
}

#Preview(as: .systemMedium) {
    StatisticsWidget()
} timeline: {
    DateEntry(date: .now)
}
