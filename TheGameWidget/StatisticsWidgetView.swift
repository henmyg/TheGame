// Henrik Top Mygind, 30/06/2023

import WidgetKit
import SwiftUI
import SwiftData


struct StatisticsWidgetView : View {
    var entry: ManualUpdateProvider.Entry
    
    @Query
    var losses: [Loss]

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Most recent:")
                    Text(losses.recentLoss)
                }
             
                HStack {
                    Text("Times lost:")
                    Text("\(losses.count)")
                }
            }
        }
        .containerBackground(.fill.tertiary, for: .widget)
    }
}

#Preview(as: .systemMedium) {
    StatisticsWidget()
} timeline: {
    DateEntry(date: .now)
}
