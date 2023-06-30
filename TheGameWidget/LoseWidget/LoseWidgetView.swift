// Henrik Top Mygind, 30/06/2023

import SwiftUI
import SwiftData
import WidgetKit

struct LoseWidgetView: View {
    var entry: ManualUpdateTimelineProvider.Entry
    
    @Environment(\.widgetFamily) var family

    var body: some View {
        VStack {
            Button(intent: LoseIntent()) {
                HStack(spacing: 16) {
                    Image(systemName: "hand.thumbsdown")
                        .bold()
                    
                    if family != .systemSmall {
                        Text("I lost the game")
                    }
                }
                .padding()
            }
            .buttonStyle(.borderedProminent)
        }
        .containerBackground(.fill.tertiary, for: .widget)
    }
}

#Preview(as: .systemMedium) {
    LoseWidget()
} timeline: {
    DateEntry(date: .now)
}

#Preview(as: .systemSmall) {
    LoseWidget()
} timeline: {
    DateEntry(date: .now)
}
