// Henrik Top Mygind, 29/06/2023

import SwiftUI
import SwiftData
import WidgetKit

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query var losses: [Loss]
    
    var body: some View {
        VStack {
            Text("The game")
                .font(.title)
            
            Spacer()
            
            Button(action: doIt) {
                HStack(spacing: 16) {
                    Image(systemName: "hand.thumbsdown")
                        .bold()
                    Text("I lost the game")
                }
                .padding()
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            statistics
        }
        .padding()
    }
    
    var statistics: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Most recent loss:")
                Text(losses.recentLoss)
            }
         
            HStack {
                Text("Times lost:")
                Text("\(losses.count)")
            }
        }
    }
    
    func doIt() {
        modelContext.insert(Loss(date: .now))
        WidgetCenter.shared.reloadTimelines(ofKind: "StatisticsWidget")
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Loss.self], inMemory: true)
}
