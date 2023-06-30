// Henrik Top Mygind, 30/06/2023
import Foundation
import SwiftData

extension ModelContainer {
    private static let appGroupContainerID = "group.dk.henmyg.thegame.shared"
    private static let url: URL = {
        guard let appGroupContainer = FileManager.default.containerURL(
            forSecurityApplicationGroupIdentifier: appGroupContainerID
        ) else {
            fatalError("Shared file container could not be created.")
        }
        return appGroupContainer.appendingPathComponent("Model.sqlite")
    }()
    
    static var shared: ModelContainer {
        get throws {
            try ModelContainer(for: Loss.self, ModelConfiguration(url: url))
        }
    }
}
