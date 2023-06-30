// Henrik Top Mygind, 30/06/2023

import AppIntents
import SwiftData
import WidgetKit
import OSLog

struct LoseIntent: AppIntent {
    static var title: LocalizedStringResource = "Lose The Game"
    
    func perform() async throws -> some IntentResult {
        do {
            let modelContext = ModelContext(try .shared)
            modelContext.insert(Loss(date: .now))
            try modelContext.save()
            WidgetCenter.shared.reloadTimelines(ofKind: "StatisticsWidget")
        }
        catch {
            Logger(
                subsystem: "TheGame.Widget",
                category: "LoseIntent").error("Failed perform: \("\(error as NSError)", privacy: .public)")
        }
        
        return .result()
    }
}
